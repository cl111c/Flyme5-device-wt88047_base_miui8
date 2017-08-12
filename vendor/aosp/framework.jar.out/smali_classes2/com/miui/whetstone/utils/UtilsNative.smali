.class public final Lcom/miui/whetstone/utils/UtilsNative;
.super Ljava/lang/Object;
.source "UtilsNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "whetstone"

.field public static final TRIM_DALVIK_CONCURRENT:I = 0x1

.field public static final TRIM_DALVIK_EXPLICIT:I = 0x2

.field public static final TRIM_DALVIK_MALLOC:I = 0x0

.field public static final TRIM_DALVIK_OOM:I = 0x3

.field private static mEndTrimMemory:Ljava/lang/reflect/Method;

.field private static mStartTrimMemory:Ljava/lang/reflect/Method;

.field private static mTrimLocalMemory:Ljava/lang/reflect/Method;

.field private static mWindowManagerGlobal:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mWindowManagerGlobalObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "whetstone_sdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/miui/whetstone/utils/UtilsNative;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearOpenGLCache()V
    .locals 6

    .prologue
    .line 78
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    sget-object v1, Lcom/miui/whetstone/utils/UtilsNative;->mWindowManagerGlobal:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 81
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/utils/UtilsNative;->mStartTrimMemory:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/miui/whetstone/utils/UtilsNative;->mWindowManagerGlobalObject:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x50

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v1, Lcom/miui/whetstone/utils/UtilsNative;->mTrimLocalMemory:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/miui/whetstone/utils/UtilsNative;->mWindowManagerGlobalObject:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {}, Lcom/miui/whetstone/utils/UtilsNative;->nativeClearOpenGLCache()V

    .line 84
    sget-object v1, Lcom/miui/whetstone/utils/UtilsNative;->mEndTrimMemory:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/miui/whetstone/utils/UtilsNative;->mWindowManagerGlobalObject:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 96
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    return-void

    .line 85
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_0
    move-exception v0

    .line 86
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 87
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 93
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    invoke-static {}, Lcom/miui/whetstone/utils/UtilsNative;->nativeClearOpenGLCache()V

    goto :goto_0
.end method

.method public static copyObjectFields(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 10
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "dest"    # Ljava/lang/Object;
    .param p2, "deepCopy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 117
    if-eqz p2, :cond_1

    .line 119
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_9

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_0

    aget-object v4, v0, v6

    .line 121
    .local v4, "field":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 122
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, p1, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 119
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 126
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/reflect/Field;
    array-length v7, v0

    .restart local v7    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_2
    if-ge v6, v7, :cond_9

    aget-object v4, v0, v6

    .line 127
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 128
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, p1, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 131
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catch_0
    move-exception v3

    .line 133
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 139
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 140
    .local v5, "fieldMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    if-eqz v1, :cond_4

    .line 141
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/reflect/Field;
    array-length v7, v0

    .restart local v7    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_4
    if-ge v6, v7, :cond_3

    aget-object v4, v0, v6

    .line 142
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 140
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_3

    .line 147
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_4
    if-eqz p2, :cond_7

    .line 149
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_5
    if-eqz v1, :cond_9

    .line 150
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/reflect/Field;
    array-length v7, v0

    .restart local v7    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_6
    if-ge v6, v7, :cond_6

    aget-object v4, v0, v6

    .line 151
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 153
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 154
    .local v2, "destField":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_5

    .line 155
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 156
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, p1, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 149
    .end local v2    # "destField":Ljava/lang/reflect/Field;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_5

    .line 161
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/reflect/Field;
    array-length v7, v0

    .restart local v7    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_7
    if-ge v6, v7, :cond_9

    aget-object v4, v0, v6

    .line 162
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 164
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 165
    .restart local v2    # "destField":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_8

    .line 166
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 167
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, p1, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 171
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v2    # "destField":Ljava/lang/reflect/Field;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catch_1
    move-exception v3

    .line 173
    .restart local v3    # "e":Ljava/lang/IllegalAccessException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 177
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    .end local v5    # "fieldMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    :cond_9
    return-object p1
.end method

.method public static native getIdleTimeInMillis()J
.end method

.method public static native getUpTimeInMillis()J
.end method

.method private static init()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 47
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 48
    sput-object v4, Lcom/miui/whetstone/utils/UtilsNative;->mWindowManagerGlobal:Ljava/lang/Class;

    .line 75
    .local v1, "getInstance":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 51
    .end local v1    # "getInstance":Ljava/lang/reflect/Method;
    :cond_1
    :try_start_0
    const-string v2, "android.view.WindowManagerGlobal"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/miui/whetstone/utils/UtilsNative;->mWindowManagerGlobal:Ljava/lang/Class;

    .line 52
    sget-object v2, Lcom/miui/whetstone/utils/UtilsNative;->mWindowManagerGlobal:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 53
    sget-object v2, Lcom/miui/whetstone/utils/UtilsNative;->mWindowManagerGlobal:Ljava/lang/Class;

    const-string v3, "getInstance"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 54
    .restart local v1    # "getInstance":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 55
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/miui/whetstone/utils/UtilsNative;->mWindowManagerGlobalObject:Ljava/lang/Object;

    .line 56
    sget-object v2, Lcom/miui/whetstone/utils/UtilsNative;->mWindowManagerGlobalObject:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 57
    sget-object v2, Lcom/miui/whetstone/utils/UtilsNative;->mWindowManagerGlobal:Ljava/lang/Class;

    const-string v3, "startTrimMemory"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/miui/whetstone/utils/UtilsNative;->mStartTrimMemory:Ljava/lang/reflect/Method;

    .line 58
    sget-object v2, Lcom/miui/whetstone/utils/UtilsNative;->mWindowManagerGlobal:Ljava/lang/Class;

    const-string v3, "trimLocalMemory"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/miui/whetstone/utils/UtilsNative;->mTrimLocalMemory:Ljava/lang/reflect/Method;

    .line 59
    sget-object v2, Lcom/miui/whetstone/utils/UtilsNative;->mWindowManagerGlobal:Ljava/lang/Class;

    const-string v3, "endTrimMemory"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/miui/whetstone/utils/UtilsNative;->mEndTrimMemory:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "whetstone"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static native nativeClearOpenGLCache()V
.end method

.method public static native nativeSensorsControl(Landroid/os/IBinder;ZIJJI)I
.end method

.method private static native naviteRestoreBitmap(JJ)Z
.end method

.method public static restoreBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "dest"    # Landroid/graphics/Bitmap;

    .prologue
    .line 38
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:J

    iget-wide v2, p1, Landroid/graphics/Bitmap;->mNativeBitmap:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/whetstone/utils/UtilsNative;->naviteRestoreBitmap(JJ)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 39
    iget-object v0, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    iput-object v0, p1, Landroid/graphics/Bitmap;->mBuffer:[B

    .line 40
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setNinePatchChunk([B)V

    .line 44
    :cond_0
    return-void
.end method

.method public static sensorsControl(Landroid/os/IBinder;ZIJJI)I
    .locals 1
    .param p0, "connection"    # Landroid/os/IBinder;
    .param p1, "enable"    # Z
    .param p2, "handle"    # I
    .param p3, "sam"    # J
    .param p5, "max"    # J
    .param p7, "res"    # I

    .prologue
    .line 98
    invoke-static/range {p0 .. p7}, Lcom/miui/whetstone/utils/UtilsNative;->nativeSensorsControl(Landroid/os/IBinder;ZIJJI)I

    move-result v0

    return v0
.end method

.method public static trimApplication(I)V
    .locals 0
    .param p0, "level"    # I

    .prologue
    .line 101
    invoke-static {p0}, Lcom/miui/whetstone/utils/UtilsNative;->trimApplicationDalvik(I)V

    .line 104
    return-void
.end method

.method public static native trimApplicationDalvik(I)V
.end method

.method public static native trimDalvikHeapSize()V
.end method
