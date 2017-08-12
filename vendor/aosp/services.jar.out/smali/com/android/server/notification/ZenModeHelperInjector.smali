.class public Lcom/android/server/notification/ZenModeHelperInjector;
.super Ljava/lang/Object;
.source "ZenModeHelperInjector.java"


# static fields
.field private static sRingerMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, -0x1

    sput v0, Lcom/android/server/notification/ZenModeHelperInjector;->sRingerMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyRestrictions(Lcom/android/server/notification/ZenModeHelper;Landroid/app/AppOpsManager;Landroid/content/Context;I)V
    .locals 5
    .param p0, "helper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "mAppOps"    # Landroid/app/AppOpsManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "usage"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v0

    .line 25
    .local v0, "zenMode":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 26
    const/4 v2, 0x4

    if-ne p3, v2, :cond_1

    .line 27
    invoke-virtual {p1, v4, p3, v1, v3}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 28
    const/16 v2, 0x1c

    invoke-virtual {p1, v2, p3, v1, v3}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    invoke-static {p2}, Lcom/android/server/notification/ZenModeHelperInjector;->isVibrateEnabledInSilent(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p1, v4, p3, v1, v3}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    goto :goto_0
.end method

.method static applyRestrictions(Lcom/android/server/notification/ZenModeHelper;Landroid/content/Context;Landroid/app/AppOpsManager;)V
    .locals 1
    .param p0, "helper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mAppOps"    # Landroid/app/AppOpsManager;

    .prologue
    .line 17
    const/4 v0, 0x5

    invoke-static {p0, p2, p1, v0}, Lcom/android/server/notification/ZenModeHelperInjector;->applyRestrictions(Lcom/android/server/notification/ZenModeHelper;Landroid/app/AppOpsManager;Landroid/content/Context;I)V

    .line 18
    const/4 v0, 0x6

    invoke-static {p0, p2, p1, v0}, Lcom/android/server/notification/ZenModeHelperInjector;->applyRestrictions(Lcom/android/server/notification/ZenModeHelper;Landroid/app/AppOpsManager;Landroid/content/Context;I)V

    .line 19
    const/4 v0, 0x4

    invoke-static {p0, p2, p1, v0}, Lcom/android/server/notification/ZenModeHelperInjector;->applyRestrictions(Lcom/android/server/notification/ZenModeHelper;Landroid/app/AppOpsManager;Landroid/content/Context;I)V

    .line 20
    return-void
.end method

.method static applyRingerModeToZen(Lcom/android/server/notification/ZenModeHelper;Landroid/content/Context;I)I
    .locals 4
    .param p0, "helper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ringerMode"    # I

    .prologue
    const/4 v2, 0x1

    .line 38
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v1

    .line 39
    .local v1, "zenMode":I
    const/4 v0, -0x1

    .line 40
    .local v0, "newZen":I
    sput p2, Lcom/android/server/notification/ZenModeHelperInjector;->sRingerMode:I

    .line 42
    packed-switch p2, :pswitch_data_0

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 45
    :pswitch_0
    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 46
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 50
    :pswitch_1
    if-eqz v1, :cond_0

    if-eq v1, v2, :cond_0

    .line 51
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 42
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static applyZenToRingerMode(Lcom/android/server/notification/ZenModeHelper;Landroid/content/Context;I)I
    .locals 6
    .param p0, "helper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ringerMode"    # I

    .prologue
    const/4 v5, 0x2

    .line 61
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v2

    .line 62
    .local v2, "zenMode":I
    const/4 v0, -0x1

    .line 64
    .local v0, "newRingerMode":I
    sget v3, Lcom/android/server/notification/ZenModeHelperInjector;->sRingerMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 65
    sget p2, Lcom/android/server/notification/ZenModeHelperInjector;->sRingerMode:I

    .line 68
    :cond_0
    packed-switch v2, :pswitch_data_0

    .line 83
    :cond_1
    :goto_0
    return v0

    .line 70
    :pswitch_0
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lmiui/util/AudioManagerHelper;->getValidatedRingerMode(Landroid/content/Context;I)I

    move-result v1

    .line 71
    .local v1, "validateRingerMode":I
    if-ne p2, v5, :cond_1

    .line 72
    move v0, v1

    goto :goto_0

    .line 77
    .end local v1    # "validateRingerMode":I
    :pswitch_1
    if-eq p2, v5, :cond_1

    .line 78
    const/4 v0, 0x2

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static canInterrupt(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ZenModeHelper;)Z
    .locals 2
    .param p0, "service"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "helper"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelperInjector;->isVibrateEnabledInSilent(Landroid/content/Context;)Z

    move-result v0

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVibrateEnabledInSilent(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method
