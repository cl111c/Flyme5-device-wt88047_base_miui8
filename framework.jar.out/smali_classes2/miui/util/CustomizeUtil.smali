.class public Lmiui/util/CustomizeUtil;
.super Ljava/lang/Object;
.source "CustomizeUtil.java"


# static fields
.field private static final CUST_VARIANT:Ljava/lang/String; = "cust_variant"

.field private static final CUST_VARIANT_FILE:Ljava/io/File;

.field private static final DATA_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

.field private static final MIUI_APP_DIR:Ljava/io/File;

.field private static final MIUI_CUSTOMIZED_APP_DIR:Ljava/io/File;

.field private static final MIUI_CUSTOMIZED_CUST_DIR:Ljava/io/File;

.field private static final MIUI_CUSTOMIZED_DATA_DIR:Ljava/io/File;

.field private static final MIUI_CUST_DIR:Ljava/io/File;

.field private static final SYSTEM_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

.field private static sCustVariant:Ljava/lang/String;

.field private static sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miui/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_DATA_DIR:Ljava/io/File;

    .line 26
    new-instance v0, Ljava/io/File;

    const-string v1, "/cust/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_CUST_DIR:Ljava/io/File;

    .line 28
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustomizedDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "cust"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUST_DIR:Ljava/io/File;

    .line 30
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miui/app/noncustomized"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->DATA_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    .line 32
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/data-app/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->SYSTEM_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    .line 34
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustomizedDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "app"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_APP_DIR:Ljava/io/File;

    .line 36
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiAppDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "customized"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_APP_DIR:Ljava/io/File;

    .line 38
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustVariantFile()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lmiui/util/CustomizeUtil;->CUST_VARIANT_FILE:Ljava/io/File;

    .line 42
    const-string v0, ""

    sput-object v0, Lmiui/util/CustomizeUtil;->sCustVariant:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    .line 46
    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    const-string v1, "com.android.keyguard"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    const-string v1, "com.mfashiongallery.emag"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forceLayoutHideNavigation(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 118
    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getMiuiAppDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_APP_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiCustDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUST_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiCustVariantDir()Ljava/io/File;
    .locals 7

    .prologue
    .line 81
    sget-boolean v4, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v4, :cond_0

    sget-object v4, Lmiui/util/CustomizeUtil;->sCustVariant:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 82
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustDir()Ljava/io/File;

    move-result-object v5

    sget-object v6, Lmiui/util/CustomizeUtil;->sCustVariant:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    .local v3, "fr":Ljava/io/FileReader;
    :goto_0
    return-object v4

    .line 85
    .end local v3    # "fr":Ljava/io/FileReader;
    :cond_0
    sget-object v4, Lmiui/util/CustomizeUtil;->CUST_VARIANT_FILE:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    sget-object v4, Lmiui/util/CustomizeUtil;->CUST_VARIANT_FILE:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 88
    .restart local v3    # "fr":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 89
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "cust_variant":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 91
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 92
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 93
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "cust_variant":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 99
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 95
    :catch_1
    move-exception v2

    .line 96
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getMiuiCustVariantFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 107
    sget-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_DATA_DIR:Ljava/io/File;

    const-string v2, "cust_variant"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_CUST_DIR:Ljava/io/File;

    const-string v2, "cust_variant"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMiuiCustomizedAppDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_APP_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiCustomizedDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_CUST_DIR:Ljava/io/File;

    .line 58
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_DATA_DIR:Ljava/io/File;

    goto :goto_0
.end method

.method public static getMiuiNoCustomizedAppDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lmiui/util/CustomizeUtil;->SYSTEM_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    .line 65
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmiui/util/CustomizeUtil;->DATA_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    goto :goto_0
.end method

.method public static getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 7
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outPoint"    # Landroid/graphics/Point;

    .prologue
    .line 123
    :try_start_0
    const-class v2, Landroid/view/Display;

    const-string v3, "getRealSize"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/graphics/Point;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 124
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CustomizeUtil"

    const-string v3, "no getRealSize hack method"

    invoke-static {v2, v3}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public static needChangeSize()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 114
    const-string v1, "lithium"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "persist.sys.force_nav"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setMiuiCustVariatDir(Ljava/lang/String;)V
    .locals 0
    .param p0, "custVariant"    # Ljava/lang/String;

    .prologue
    .line 103
    sput-object p0, Lmiui/util/CustomizeUtil;->sCustVariant:Ljava/lang/String;

    .line 104
    return-void
.end method
