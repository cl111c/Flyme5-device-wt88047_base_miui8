.class public final Lflyme/R$bool;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "bool"
.end annotation


# static fields
.field public static config_Software_AutoDurations_available:I

.field public static config_alwaysUseCdmaRssi:I

.field public static config_automatic_brightness_available:I

.field public static config_brightness_mapping:I

.field public static config_electronBeamOffEnabled:I

.field public static config_enableLockScreenRotation:I

.field public static config_enableLockScreenTranslucentDecor:I

.field public static config_enableScreenshotChord:I

.field public static config_setup_mms_data:I

.field public static config_showNavigationBar:I

.field public static config_sim_switch:I

.field public static config_speed_up_audio_on_mt_calls_ex:I

.field public static config_wimaxEnabled:I

.field public static isTablet:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4874
    const v0, 0xd0009

    sput v0, Lflyme/R$bool;->config_Software_AutoDurations_available:I

    .line 4877
    const v0, 0xd0006

    sput v0, Lflyme/R$bool;->config_alwaysUseCdmaRssi:I

    .line 4878
    const v0, 0xd0008

    sput v0, Lflyme/R$bool;->config_automatic_brightness_available:I

    .line 4882
    const v0, 0xd000a

    sput v0, Lflyme/R$bool;->config_brightness_mapping:I

    .line 4889
    const v0, 0xd0003

    sput v0, Lflyme/R$bool;->config_electronBeamOffEnabled:I

    .line 4892
    const v0, 0xd0004

    sput v0, Lflyme/R$bool;->config_enableLockScreenRotation:I

    .line 4893
    const v0, 0xd0005

    sput v0, Lflyme/R$bool;->config_enableLockScreenTranslucentDecor:I

    .line 4896
    const/high16 v0, 0xd0000

    sput v0, Lflyme/R$bool;->config_enableScreenshotChord:I

    .line 4900
    const v0, 0xd000c

    sput v0, Lflyme/R$bool;->config_setup_mms_data:I

    .line 4904
    const v0, 0xd0002

    sput v0, Lflyme/R$bool;->config_showNavigationBar:I

    .line 4905
    const v0, 0xd000b

    sput v0, Lflyme/R$bool;->config_sim_switch:I

    .line 4908
    const v0, 0xd0001

    sput v0, Lflyme/R$bool;->config_speed_up_audio_on_mt_calls_ex:I

    .line 4909
    const v0, 0xd0007

    sput v0, Lflyme/R$bool;->config_wimaxEnabled:I

    .line 4910
    const v0, 0xd000d

    sput v0, Lflyme/R$bool;->isTablet:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
