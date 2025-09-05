.class public Lcom/mediatek/hdmi/HdimReflectionHelper;
.super Ljava/lang/Object;
.source "HdimReflectionHelper.java"


# static fields
.field public static final HDMI_BOX_SUPPORT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    const-string v0, "ro.vendor.mtk_alps_box_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/hdmi/HdimReflectionHelper;->HDMI_BOX_SUPPORT:Z

    return-void
.end method

.method public static enableHdmi(Ljava/lang/Object;Z)V
    .locals 5

    .line 153
    :try_start_0
    invoke-static {}, Lcom/mediatek/hdmi/HdimReflectionHelper;->getHdmiManagerClass()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 153
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 155
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    .line 156
    const-string v4, "enableHdmi"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 158
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    goto :goto_0

    .line 159
    :catch_0
    move-exception p0

    .line 160
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    :goto_0
    return-void
.end method

.method public static getAudioParameter(Ljava/lang/Object;)I
    .locals 6

    .line 91
    :try_start_0
    invoke-static {}, Lcom/mediatek/hdmi/HdimReflectionHelper;->getHdmiManagerClass()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 91
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 93
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 94
    const-string v4, "getAudioParameter"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 97
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "HDMI_MAX_CHANNEL"

    .line 98
    invoke-static {v3}, Lcom/mediatek/hdmi/HdimReflectionHelper;->getHdmiDisplayTypeConstant(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "HDMI_MAX_CHANNEL_OFFSETS"

    .line 99
    invoke-static {v2}, Lcom/mediatek/hdmi/HdimReflectionHelper;->getHdmiDisplayTypeConstant(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    .line 97
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 101
    :catch_0
    move-exception p0

    .line 102
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    const/4 p0, -0x1

    return p0
.end method

.method public static getDeclaredMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 202
    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 203
    invoke-virtual {p0, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 204
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 205
    new-array p2, v0, [Ljava/lang/Object;

    .line 206
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 212
    :catch_0
    move-exception p0

    .line 213
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 210
    :catch_1
    move-exception p0

    .line 211
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 208
    :catch_2
    move-exception p0

    .line 209
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 214
    :goto_0
    nop

    .line 215
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getHdmiDisplayType(Ljava/lang/Object;)I
    .locals 3

    .line 32
    :try_start_0
    invoke-static {}, Lcom/mediatek/hdmi/HdimReflectionHelper;->getHdmiManagerClass()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 33
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 32
    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 34
    const-string v1, "getDisplayType"

    invoke-static {v0, p0, v1}, Lcom/mediatek/hdmi/HdimReflectionHelper;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 38
    const/4 p0, -0x1

    return p0
.end method

.method public static getHdmiDisplayTypeConstant(Ljava/lang/String;)I
    .locals 3

    .line 43
    :try_start_0
    const-string v0, "com.mediatek.hdmi.HdmiDef"

    const/4 v1, 0x0

    .line 44
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 43
    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 45
    invoke-static {v0, p0}, Lcom/mediatek/hdmi/HdimReflectionHelper;->getNonPublicField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 50
    :catch_0
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 48
    :catch_1
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 46
    :catch_2
    move-exception p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 52
    :goto_0
    nop

    .line 53
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getHdmiManagerClass()Ljava/lang/String;
    .locals 3

    .line 23
    const-string v0, "HdimReflectionHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHdmiManagerClass, HDMI_BOX_SUPPORT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/mediatek/hdmi/HdimReflectionHelper;->HDMI_BOX_SUPPORT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sget-boolean v0, Lcom/mediatek/hdmi/HdimReflectionHelper;->HDMI_BOX_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "com.mediatek.hdmi.HdmiNative"

    return-object v0

    .line 27
    :cond_0
    const-string v0, "com.mediatek.hdmi.IMtkHdmiManager"

    return-object v0
.end method

.method public static getHdmiService()Ljava/lang/Object;
    .locals 5

    .line 165
    nop

    .line 166
    const-string v0, "HdimReflectionHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHdmiService, HDMI_BOX_SUPPORT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/mediatek/hdmi/HdimReflectionHelper;->HDMI_BOX_SUPPORT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-boolean v0, Lcom/mediatek/hdmi/HdimReflectionHelper;->HDMI_BOX_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 169
    :try_start_0
    const-string v0, "com.mediatek.hdmi.HdmiNative"

    .line 170
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 169
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 171
    const-string v1, "HdimReflectionHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHdmiService, hdmiManagerClass = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-array v1, v2, [Ljava/lang/Class;

    .line 173
    const-string v3, "getInstance"

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 174
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 175
    new-array v2, v2, [Ljava/lang/Object;

    .line 176
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 177
    const-string v1, "HdimReflectionHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHdmiService, obj = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    const-string v1, "HdimReflectionHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHdmiService, e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, 0x0

    .line 181
    :goto_0
    goto :goto_1

    .line 183
    :cond_0
    const-string v0, "mtkhdmi"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 185
    :goto_1
    const-string v1, "HdimReflectionHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHdmiService, obj = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-object v0
.end method

.method public static getNonPublicField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 190
    nop

    .line 192
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 193
    const/4 p1, 0x1

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    goto :goto_1

    .line 194
    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    const/4 p0, 0x0

    .line 195
    :goto_0
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 197
    :goto_1
    return-object p0
.end method

.method public static getSupportedResolutions(Ljava/lang/Object;)[I
    .locals 4

    .line 74
    :try_start_0
    invoke-static {}, Lcom/mediatek/hdmi/HdimReflectionHelper;->getHdmiManagerClass()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 74
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 76
    new-array v1, v2, [Ljava/lang/Class;

    .line 77
    const-string v3, "getSupportedResolutions"

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 79
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 80
    new-array v1, v2, [Ljava/lang/Object;

    .line 81
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 82
    check-cast p0, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 83
    :catch_0
    move-exception p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasCapability(Ljava/lang/Object;)Z
    .locals 5

    .line 58
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/mediatek/hdmi/HdimReflectionHelper;->getHdmiManagerClass()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 58
    invoke-static {v1, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 60
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    .line 61
    const-string v4, "hasCapability"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 63
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "CAPABILITY_SCALE_ADJUST"

    .line 64
    invoke-static {v3}, Lcom/mediatek/hdmi/HdimReflectionHelper;->getHdmiDisplayTypeConstant(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 63
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 66
    :catch_0
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    return v0
.end method

.method public static isSignalOutputting(Ljava/lang/Object;)Z
    .locals 4

    .line 109
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/mediatek/hdmi/HdimReflectionHelper;->getHdmiManagerClass()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 109
    invoke-static {v1, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 111
    new-array v2, v0, [Ljava/lang/Class;

    .line 112
    const-string v3, "isSignalOutputting"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 114
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 115
    new-array v2, v0, [Ljava/lang/Object;

    .line 116
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 118
    :catch_0
    move-exception p0

    .line 119
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    return v0
.end method

.method public static setVideoResolution(Ljava/lang/Object;I)V
    .locals 5

    .line 126
    :try_start_0
    invoke-static {}, Lcom/mediatek/hdmi/HdimReflectionHelper;->getHdmiManagerClass()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 126
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 128
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    .line 129
    const-string v4, "setVideoResolution"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 132
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_0

    .line 133
    :catch_0
    move-exception p0

    .line 134
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    :goto_0
    return-void
.end method

.method public static setVideoScale(Ljava/lang/Object;I)V
    .locals 5

    .line 140
    :try_start_0
    invoke-static {}, Lcom/mediatek/hdmi/HdimReflectionHelper;->getHdmiManagerClass()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 140
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 142
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    .line 143
    const-string v4, "setVideoScale"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 145
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    goto :goto_0

    .line 146
    :catch_0
    move-exception p0

    .line 147
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    :goto_0
    return-void
.end method
