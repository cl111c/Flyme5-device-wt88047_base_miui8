.class public abstract Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
.super Lcom/android/internal/policy/impl/PhoneWindowManager;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;,
        Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;,
        Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;
    }
.end annotation


# static fields
.field private static final BTN_MOUSE:I = 0x110

.field private static final ENABLE_VOLUME_KEY_PRESS_COUNTS:I = 0x2

.field private static final ENABLE_VOLUME_KEY_PRESS_INTERVAL:I = 0x12c

.field static final HIDDEN_NAV_CONSUMER_LAYER:I = 0x1a

.field protected static final INTERCEPT_EXPECTED_RESULT_GO_TO_SLEEP:I = -0x1

.field protected static final INTERCEPT_EXPECTED_RESULT_NONE:I = 0x0

.field protected static final INTERCEPT_EXPECTED_RESULT_WAKE_UP:I = 0x1

.field private static LID_CLOSE_SCREEN_OFF_TIMEOUT_VALUE:I = 0x0

.field private static final LONG_PRESS_VOLUME_DOWN_ACTION_NONE:I = 0x0

.field private static final LONG_PRESS_VOLUME_DOWN_ACTION_PAY:I = 0x2

.field private static final LONG_PRESS_VOLUME_DOWN_ACTION_STREET_SNAP:I = 0x1

.field private static final PERMISSION_INTERNAL_GENERAL_API:Ljava/lang/String; = "miui.permission.USE_INTERNAL_GENERAL_API"

.field private static final SHORTCUT_ENABLE_SCREEN_BUTTONS:I

.field private static final SHORTCUT_MAX_BRIGHTNESS:I

.field private static final SHORTCUT_SCREENSHOT_ANDROID:I

.field private static final SHORTCUT_SCREENSHOT_MIUI:I

.field private static final SHORTCUT_UNLOCK:I

.field private static final SYSTEM_SETTINGS_VR_MODE:Ljava/lang/String; = "vr_mode"

.field static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field static final TYPE_LAYER_OFFSET:I = 0x3e8

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoDisableScreenButtonsManager:Lmiui/util/AutoDisableScreenButtonsManager;

.field private mBinder:Landroid/os/Binder;

.field private mBootProgress:Landroid/widget/ProgressBar;

.field private mBootText:[Ljava/lang/String;

.field private mBootTextView:Landroid/widget/TextView;

.field private mCameraIntent:Landroid/content/Intent;

.field mCameraKeyWakeScreen:Z

.field private mCurrentUserId:I

.field protected mFpNavEventNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mFrontFingerprintSensor:Z

.field mGestureWakeupEnabled:Z

.field private mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field private mHasCameraFlash:Z

.field private mIgnoreAppSwitch:Z

.field private mInputMethodWindowVisibleHeight:I

.field protected mIsStatusBarVisibleInFullscreen:Z

.field private mIsVRMode:Z

.field private mKeyPressed:I

.field private mKeyPressing:I

.field mKeyguardOnWhenHomeDown:Z

.field private mLongPressVolumeDownBehavior:I

.field private mMiuiBootMsgDialog:Landroid/app/Dialog;

.field protected mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

.field private mNeedResetTimeout:Z

.field mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

.field mPowerLongPressOriginal:Ljava/lang/Runnable;

.field private mPressToAppSwitch:Z

.field private mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

.field private final mProximitySensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

.field private mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

.field private mRequestShowMenu:Z

.field private mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

.field protected mScreenOffReason:I

.field mScreenshotReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsObserver:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;

.field private mShortcutPressing:I

.field private mShortcutTriggered:Z

.field private mSmartCoverLidOpen:Z

.field private mSoftKeyboardWinToken:Landroid/os/IBinder;

.field private mStatusBarDisableToken:Landroid/os/Binder;

.field mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBarVisible:Z

.field private mSuperWaitingKey:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTestModeEnabled:Z

.field private mTorchEnabled:Z

.field private mTorchIsJustTurnedOn:Z

.field mTrackballWakeScreen:Z

.field private final mTurnOffTorch:Ljava/lang/Runnable;

.field private mVolumeButtonPrePressedTime:J

.field private mVolumeButtonPressedCount:J

.field mVolumeKeyLaunchCamera:Z

.field private mVolumeKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field mVolumeKeyWakeScreen:Z

.field private mWifiOnly:Z

.field private mWin:Landroid/view/WindowManagerPolicy$WindowState;

.field private mWindowFlagBinder:Landroid/os/Binder;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x52

    const/16 v4, 0x1a

    const/16 v3, 0x19

    const/16 v2, 0x18

    .line 123
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_ENABLE_SCREEN_BUTTONS:I

    .line 125
    invoke-static {v5}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_MAX_BRIGHTNESS:I

    .line 127
    invoke-static {v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v3}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_ANDROID:I

    .line 129
    invoke-static {v5}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v3}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_MIUI:I

    .line 131
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_UNLOCK:I

    .line 175
    const/16 v0, 0x3a98

    sput v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->LID_CLOSE_SCREEN_OFF_TIMEOUT_VALUE:I

    .line 374
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void

    :array_0
    .array-data 4
        0x7d3
        0x7da
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;-><init>()V

    .line 156
    iput v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getPowerLongPress()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mPowerLongPressOriginal:Ljava/lang/Runnable;

    .line 320
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSmartCoverLidOpen:Z

    .line 589
    new-instance v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTurnOffTorch:Ljava/lang/Runnable;

    .line 598
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSuperWaitingKey:Ljava/util/HashSet;

    .line 615
    iput-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    .line 616
    new-instance v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    .line 634
    iput-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mFpNavEventNameList:Ljava/util/List;

    .line 635
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyguardOnWhenHomeDown:Z

    .line 1010
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWindowFlagBinder:Landroid/os/Binder;

    .line 1048
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarDisableToken:Landroid/os/Binder;

    .line 1049
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    .line 1096
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBinder:Landroid/os/Binder;

    .line 1098
    new-instance v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

    .line 1168
    new-instance v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    .line 1177
    new-instance v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1197
    new-instance v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    .line 1537
    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWifiOnly:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchIsJustTurnedOn:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Lmiui/util/HapticFeedbackUtil;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mIgnoreAppSwitch:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->markShortcutTriggered()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->makeAllUserToastAndShow(Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mPressToAppSwitch:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTurnOffTorch:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I

    return p1
.end method

.method static synthetic access$2502(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mIsVRMode:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Landroid/widget/ProgressBar;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->setTorch(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Lmiui/util/ProximitySensorWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Lmiui/util/ProximitySensorWrapper;)Lmiui/util/ProximitySensorWrapper;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Lmiui/util/ProximitySensorWrapper;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/os/Binder;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWindowFlagBinder:Landroid/os/Binder;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->setStatusBarInFullscreen(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    return-object v0
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    .line 1511
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1961
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 1962
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    .line 1963
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1964
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    const-string v1, "ShowCameraWhenLocked"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1965
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    const-string v1, "StartActivityWhenLocked"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1966
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1967
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.camera"

    const-string v3, "com.android.camera.Camera"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1969
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private static getKeyBitmask(I)I
    .locals 1
    .param p0, "keycode"    # I

    .prologue
    .line 104
    sparse-switch p0, :sswitch_data_0

    .line 119
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 107
    :sswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 109
    :sswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 111
    :sswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 113
    :sswitch_3
    const/16 v0, 0x10

    goto :goto_0

    .line 115
    :sswitch_4
    const/16 v0, 0x20

    goto :goto_0

    .line 117
    :sswitch_5
    const/16 v0, 0x40

    goto :goto_0

    .line 104
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x18 -> :sswitch_5
        0x19 -> :sswitch_4
        0x1a -> :sswitch_3
        0x52 -> :sswitch_0
        0xbb -> :sswitch_0
    .end sparse-switch
.end method

.method static getWindownManagerService()Landroid/view/IWindowManager;
    .locals 3

    .prologue
    .line 1761
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 1763
    .local v0, "service":Landroid/view/IWindowManager;
    if-nez v0, :cond_0

    .line 1764
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IWindowManager interface."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    :cond_0
    return-object v0
.end method

.method private handleKeyCombination()Z
    .locals 4

    .prologue
    .line 509
    iget v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    iget v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 544
    :cond_1
    :goto_0
    return v0

    .line 511
    :cond_2
    const/4 v0, 0x0

    .line 512
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 513
    iget v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_UNLOCK:I

    if-eq v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    const/16 v2, 0x18

    invoke-static {v2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 515
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->releaseScreenOnProximitySensor()V

    .line 516
    const/4 v0, 0x1

    .line 541
    :cond_4
    :goto_1
    if-eqz v0, :cond_1

    .line 542
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->markShortcutTriggered()V

    goto :goto_0

    .line 519
    :cond_5
    iget v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_ENABLE_SCREEN_BUTTONS:I

    if-ne v1, v2, :cond_6

    .line 520
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->stopLockTaskMode()Z

    move-result v0

    .line 521
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mAutoDisableScreenButtonsManager:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-virtual {v1}, Lmiui/util/AutoDisableScreenButtonsManager;->isScreenButtonsDisabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 522
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mAutoDisableScreenButtonsManager:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-virtual {v1}, Lmiui/util/AutoDisableScreenButtonsManager;->resetTmpButtonsStatus()V

    .line 523
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.app.ExtraStatusBarManager.TRIGGER_TOGGLE_SCREEN_BUTTONS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 524
    const/4 v0, 0x1

    goto :goto_1

    .line 527
    :cond_6
    iget v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_MAX_BRIGHTNESS:I

    if-ne v1, v2, :cond_7

    .line 528
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->setMaxTemporaryScreenBrightness()V

    .line 529
    const/4 v0, 0x1

    goto :goto_1

    .line 531
    :cond_7
    iget v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_MIUI:I

    if-ne v1, v2, :cond_4

    .line 535
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getScreenshotChordLongPress()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 536
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getScreenshotChordLongPress()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 537
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "screenshot"

    const-string v3, "menu_power"

    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->sendRecordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private inFingerprintEnrolling()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 998
    iget-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1000
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1001
    .local v2, "topClassName":Ljava/lang/String;
    const-string v3, "com.android.settings.NewFingerprintInternalActivity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 1007
    .end local v2    # "topClassName":Ljava/lang/String;
    :goto_0
    return v3

    .line 1004
    :catch_0
    move-exception v1

    .line 1005
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "WindowManager"

    const-string v4, "Exception"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move v3, v5

    .line 1007
    goto :goto_0
.end method

.method private isAudioActive()Z
    .locals 6

    .prologue
    .line 1973
    const/4 v0, 0x0

    .line 1974
    .local v0, "active":Z
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    .line 1975
    .local v3, "mode":I
    if-lez v3, :cond_0

    const/4 v5, 0x4

    if-ge v3, v5, :cond_0

    .line 1976
    const/4 v0, 0x1

    move v1, v0

    .line 1990
    .end local v0    # "active":Z
    .local v1, "active":I
    :goto_0
    return v1

    .line 1979
    .end local v1    # "active":I
    .restart local v0    # "active":Z
    :cond_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v4

    .line 1980
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 1981
    const/4 v5, 0x1

    if-ne v5, v2, :cond_2

    .line 1980
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1985
    :cond_2
    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    .line 1986
    if-eqz v0, :cond_1

    :cond_3
    move v1, v0

    .line 1990
    .restart local v1    # "active":I
    goto :goto_0
.end method

.method private isInCallScreenShowing()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 487
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 489
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, "runningActivity":Ljava/lang/String;
    const-string v2, "com.android.phone.MiuiInCallScreen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.incallui.InCallActivity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v4

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private makeAllUserToastAndShow(Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 572
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 573
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 575
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 576
    return-object v0
.end method

.method private markShortcutTriggered()V
    .locals 2

    .prologue
    .line 502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    .line 503
    iget v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    iget v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    .line 504
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    .line 505
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->callInterceptPowerKeyUp(Z)V

    .line 506
    return-void
.end method

.method private playSoundEffect()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1515
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 1516
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 1520
    :goto_0
    return v1

    .line 1519
    :cond_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1520
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private releaseScreenOnProximitySensor()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->release()Z

    .line 372
    :cond_0
    return-void
.end method

.method private resetKeyStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 580
    iput v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    .line 581
    iput v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    .line 582
    iput v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    .line 583
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z

    .line 584
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mIgnoreAppSwitch:Z

    .line 585
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    .line 586
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    .line 587
    return-void
.end method

.method private saveWindowTypeLayer(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 221
    .local v3, "typeLayers":Lorg/json/JSONObject;
    const/16 v2, 0x7d0

    .local v2, "type":I
    :goto_0
    const/16 v4, 0xbb7

    if-gt v2, v4, :cond_1

    .line 222
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v1

    .line 223
    .local v1, "layer":I
    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    .line 225
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "ex":Lorg/json/JSONException;
    const-string v4, "WindowManager"

    const-string v5, "JSONException"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 231
    .end local v0    # "ex":Lorg/json/JSONException;
    .end local v1    # "layer":I
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "window_type_layer"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 232
    return-void
.end method

.method public static sendRecordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;

    .prologue
    .line 556
    const-string v5, "count_event"

    .line 557
    .local v5, "STAT_TYPE_COUNT_EVENT":Ljava/lang/String;
    const-string v4, "com.miui.gallery"

    .line 558
    .local v4, "GALLERY_PKG_NAME":Ljava/lang/String;
    const-string v0, "com.miui.gallery.intent.action.SEND_STAT"

    .line 559
    .local v0, "ACTION_SEND_STAT":Ljava/lang/String;
    const-string v3, "stat_type"

    .line 560
    .local v3, "EXTRA_STAT_TYPE":Ljava/lang/String;
    const-string v1, "category"

    .line 561
    .local v1, "EXTRA_CATEGORY":Ljava/lang/String;
    const-string v2, "event"

    .line 563
    .local v2, "EXTRA_EVENT":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.miui.gallery.intent.action.SEND_STAT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 564
    .local v6, "intent":Landroid/content/Intent;
    const-string v7, "com.miui.gallery"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    const-string v7, "stat_type"

    const-string v8, "count_event"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    const-string v7, "category"

    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    const-string v7, "event"

    invoke-virtual {v6, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 569
    return-void
.end method

.method private setStatusBarInFullscreen(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1105
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    .line 1107
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1108
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_1

    .line 1109
    if-eqz p1, :cond_0

    const/high16 v2, -0x80000000

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBinder:Landroid/os/Binder;

    const-string v4, "android"

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1126
    :goto_1
    return-void

    .line 1114
    :catch_0
    move-exception v0

    .line 1116
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1117
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0

    .line 1123
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1124
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private setTorch(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1187
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHasCameraFlash:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1194
    :goto_0
    return v1

    .line 1189
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    .line 1190
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1191
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "miui.intent.extra.IS_ENABLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1192
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1194
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected abstract callSuperInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1793
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1794
    const/4 v0, 0x0

    .line 1796
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method checkProcessRunning(Ljava/lang/String;)Z
    .locals 7
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1770
    iget-object v5, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1771
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_1

    .line 1787
    :cond_0
    :goto_0
    return v4

    .line 1775
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 1777
    .local v3, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_0

    .line 1781
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1782
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1783
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1999
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2000
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "BaseMiuiPhoneWindowManager"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2002
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInputMethodWindowVisibleHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mInputMethodWindowVisibleHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2003
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFrontFingerprintSensor="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mFrontFingerprintSensor:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2004
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSmartCoverLidOpen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSmartCoverLidOpen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2005
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mScreenOffReason="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenOffReason:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2006
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBarVisible="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2007
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsStatusBarVisibleInFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2008
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHasCameraFlash="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHasCameraFlash:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2009
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTorchEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2010
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTorchIsJustTurnedOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchIsJustTurnedOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2011
    const-string v0, "    "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KeyPress"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2012
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mKeyPressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2013
    const-string v0, " mKeyPressing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2014
    const-string v0, " mShortcutPressing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2015
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_MENU KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x52

    invoke-static {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2016
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_APP_SWITCH KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0xbb

    invoke-static {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2017
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_HOME KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2018
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_BACK KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2019
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_POWER KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2020
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_VOLUME_DOWN KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x19

    invoke-static {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2021
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_VOLUME_UP KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2022
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "ElSE KEYCODE KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2023
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SHORTCUT_ENABLE_SCREEN_BUTTONS="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_ENABLE_SCREEN_BUTTONS:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2024
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SHORTCUT_MAX_BRIGHTNESS="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_MAX_BRIGHTNESS:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2025
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SHORTCUT_SCREENSHOT_ANDROID="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_ANDROID:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2026
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SHORTCUT_SCREENSHOT_MIUI="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_MIUI:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2027
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SHORTCUT_UNLOCK="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_UNLOCK:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2028
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShortcutTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2029
    const-string v0, "    "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KeyResponseSetting"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2030
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurrentUserId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2031
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPressToAppSwitch="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mPressToAppSwitch:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2032
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mGestureWakeupEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mGestureWakeupEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2033
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCameraKeyWakeScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2034
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTrackballWakeScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTrackballWakeScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2035
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mVolumeKeyWakeScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2036
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mVolumeKeyLaunchCamera="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mVolumeKeyLaunchCamera:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2037
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mScreenButtonsDisabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mAutoDisableScreenButtonsManager:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-virtual {v0}, Lmiui/util/AutoDisableScreenButtonsManager;->isScreenButtonsDisabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2038
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mVolumeButtonPrePressedTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mVolumeButtonPrePressedTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2039
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mVolumeButtonPressedCount="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mVolumeButtonPressedCount:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2040
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLongPressVolumeDownBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2041
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRequestShowMenu="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2042
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIgnoreAppSwitch="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mIgnoreAppSwitch:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2043
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsVRMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mIsVRMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2044
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1879
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->enableScreenAfterBoot()V

    .line 1880
    const-string v4, "ro.radio.noril"

    invoke-static {v4, v6}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWifiOnly:Z

    .line 1883
    const-string v1, "persist.sys.smartcover_enabled"

    .line 1884
    .local v1, "legacySmartcoverModeKey":Ljava/lang/String;
    const-string v4, "persist.sys.smartcover_enabled"

    invoke-static {v4, v6}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1885
    const-string v4, "persist.sys.smartcover_enabled"

    invoke-static {v4, v6}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;Z)V

    .line 1886
    const-string v4, "persist.sys.smartcover_mode"

    invoke-static {v4, v5}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;I)V

    .line 1889
    :cond_0
    const-string v4, "persist.sys.smartcover_mode"

    invoke-static {v4, v5}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1891
    .local v3, "smartcoverMode":I
    if-ne v5, v3, :cond_1

    .line 1892
    const-string v4, "support_multiple_small_win_cover"

    invoke-static {v4, v6}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1893
    .local v2, "multi":Z
    if-nez v2, :cond_3

    move v4, v5

    :goto_0
    invoke-static {v4}, Landroid/provider/MiuiSettings$System;->setSmartCoverMode(Z)V

    .line 1895
    .end local v2    # "multi":Z
    :cond_1
    const/4 v0, 0x0

    .line 1896
    .local v0, "inSmallWindowMode":Z
    const-string v4, "persist.sys.smartcover_mode"

    invoke-static {v4, v5}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1898
    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 1899
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mLidControlsSleep:Z

    .line 1900
    iget v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mLidState:I

    if-nez v4, :cond_4

    move v0, v5

    .line 1902
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "is_small_window"

    invoke-static {v4, v5, v0}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 1904
    return-void

    .end local v0    # "inSmallWindowMode":Z
    .restart local v2    # "multi":Z
    :cond_3
    move v4, v6

    .line 1893
    goto :goto_0

    .end local v2    # "multi":Z
    .restart local v0    # "inSmallWindowMode":Z
    :cond_4
    move v0, v6

    .line 1900
    goto :goto_1
.end method

.method protected abstract finishActivityInternal(Landroid/os/IBinder;ILandroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public finishLayoutLw()V
    .locals 5

    .prologue
    .line 1908
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishLayoutLw()V

    .line 1909
    iget v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mDockBottom:I

    iget v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCurBottom:I

    sub-int v0, v2, v3

    .line 1910
    .local v0, "inputMethodHeight":I
    iget v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mInputMethodWindowVisibleHeight:I

    if-eq v2, v0, :cond_0

    .line 1911
    iput v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mInputMethodWindowVisibleHeight:I

    .line 1912
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "input method visible height changed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.INPUT_METHOD_VISIBLE_HEIGHT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1914
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "miui.intent.extra.input_method_visible_height"

    iget v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mInputMethodWindowVisibleHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1916
    const-string v2, "miui.permission.USE_INTERNAL_GENERAL_API"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->sendAsyncBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1918
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 6

    .prologue
    .line 1051
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishPostLayoutPolicyLw()I

    move-result v0

    .line 1052
    .local v0, "changes":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eq v3, v4, :cond_0

    .line 1053
    iget-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    .line 1054
    iget-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mAutoDisableScreenButtonsManager:Lmiui/util/AutoDisableScreenButtonsManager;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    invoke-virtual {v3, v4}, Lmiui/util/AutoDisableScreenButtonsManager;->onStatusBarVisibilityChange(Z)V

    .line 1056
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    .line 1057
    .local v2, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v2, :cond_0

    .line 1058
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarDisableToken:Landroid/os/Binder;

    const-string v5, "system"

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    .end local v2    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_1
    return v0

    .line 1058
    .restart local v2    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1
    const/16 v3, 0x100

    goto :goto_0

    .line 1064
    .end local v2    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v1

    .line 1065
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v4, "RemoteException when disable status bar visible"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1067
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_1
.end method

.method protected finishPostLayoutPolicyLwInternalAfter()V
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/MiuiStatusBarManager;->isExpandableUnderFullscreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    if-nez v0, :cond_0

    .line 1086
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1087
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->registerStatusBarInputEventReceiver()V

    .line 1093
    :cond_0
    :goto_0
    return-void

    .line 1090
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->unregisterStatusBarInputEventReceiver()V

    goto :goto_0
.end method

.method protected finishPostLayoutPolicyLwInternalBefore()V
    .locals 2

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1075
    .local v0, "statusBar":Landroid/view/WindowManagerPolicy$WindowState;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    if-eqz v1, :cond_0

    .line 1076
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1077
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1078
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 1081
    :cond_0
    return-void
.end method

.method protected abstract forceStopPackage(Ljava/lang/String;I)V
.end method

.method getExtraSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 1017
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyguardWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v2

    .line 1018
    .local v2, "keyguard":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHideLockScreen:Z

    if-nez v4, :cond_1

    move-object v3, v2

    .line 1020
    .local v3, "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    const/4 v1, 0x0

    .line 1021
    .local v1, "flags":I
    if-eqz v3, :cond_0

    .line 1022
    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/2addr v1, v4

    .line 1023
    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 1024
    or-int/lit8 v1, v1, 0x1

    .line 1028
    :cond_0
    invoke-static {v1}, Landroid/app/MiuiStatusBarManager;->getDisabledFlags(I)I

    move-result v0

    .line 1029
    .local v0, "disabledFlag":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;

    invoke-direct {v5, p0, v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1045
    invoke-static {v1}, Landroid/app/MiuiStatusBarManager;->getSystemUIVisibilityFlags(I)I

    move-result v4

    return v4

    .line 1018
    .end local v0    # "disabledFlag":I
    .end local v1    # "flags":I
    .end local v3    # "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0
.end method

.method protected abstract getKeyguardWindowState()Landroid/view/WindowManagerPolicy$WindowState;
.end method

.method public getSoftKeyboardToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSoftKeyboardWinToken:Landroid/os/IBinder;

    return-object v0
.end method

.method protected abstract getWakePolicyFlag()I
.end method

.method public hideBootMessages()V
    .locals 2

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$11;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1758
    return-void
.end method

.method protected initInternal(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 179
    new-instance v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;

    .line 180
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->observe()V

    .line 182
    new-instance v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->setPowerLongPress(Ljava/lang/Runnable;)V

    .line 188
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mVolumeKeyWakeLock"

    invoke-virtual {v0, v7, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 191
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 192
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.CAPTURE_SCREENSHOT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 195
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 196
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "com.miui.app.ExtraStatusBarManager.EXIT_FULLSCREEN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 200
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string v0, "android.intent.action.PACKAGE_INSTALL"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/os/Build;->hasCameraFlash(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHasCameraFlash:Z

    .line 207
    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    invoke-direct {v0, p1, v6}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 209
    new-instance v0, Lmiui/util/AutoDisableScreenButtonsManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lmiui/util/AutoDisableScreenButtonsManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mAutoDisableScreenButtonsManager:Lmiui/util/AutoDisableScreenButtonsManager;

    .line 211
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "persist.camera.snap.enable"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "persist.camera.snap.enable"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_long_press_volume_down"

    const-string v2, "Street-snap"

    iget v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 216
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->saveWindowTypeLayer(Landroid/content/Context;)V

    .line 217
    return-void
.end method

.method protected intercept(Landroid/view/KeyEvent;IZI)I
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z
    .param p4, "expectedResult"    # I

    .prologue
    .line 604
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 605
    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 608
    .local v0, "down":Z
    :goto_0
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSuperWaitingKey:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 609
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSuperWaitingKey:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 610
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->callSuperInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    .line 612
    :cond_0
    return p4

    .line 605
    .end local v0    # "down":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 14
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    .line 387
    .local v6, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v11

    if-nez v11, :cond_2

    const/4 v2, 0x1

    .line 388
    .local v2, "down":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    .line 390
    .local v1, "canceled":Z
    if-eqz v2, :cond_0

    if-nez v6, :cond_0

    .line 391
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 394
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 395
    .local v5, "keyCode":I
    const/16 v11, 0x52

    if-ne v5, v11, :cond_1

    const/16 v5, 0xbb

    .line 397
    :cond_1
    const/16 v11, 0xbb

    if-ne v5, v11, :cond_9

    .line 398
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    if-eqz v11, :cond_3

    .line 399
    const-string v11, "BaseMiuiPhoneWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ignoring MENU because mTestModeEnabled = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-wide/16 v12, 0x0

    .line 483
    :goto_1
    return-wide v12

    .line 387
    .end local v1    # "canceled":Z
    .end local v2    # "down":Z
    .end local v5    # "keyCode":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 403
    .restart local v1    # "canceled":Z
    .restart local v2    # "down":Z
    .restart local v5    # "keyCode":I
    :cond_3
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mPressToAppSwitch:Z

    if-eqz v11, :cond_7

    .line 404
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mIgnoreAppSwitch:Z

    if-nez v11, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->keyguardOn()Z

    move-result v11

    if-nez v11, :cond_4

    .line 405
    if-eqz v2, :cond_5

    .line 406
    iget-object v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    # invokes: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->preloadRecentApps()V
    invoke-static {v11}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->access$000(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;)V

    .line 411
    :cond_4
    :goto_2
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z

    if-eqz v11, :cond_6

    .line 412
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z

    .line 413
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->markShortcutTriggered()V

    .line 414
    const-wide/16 v12, 0x0

    goto :goto_1

    .line 408
    :cond_5
    iget-object v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    # invokes: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchRecentPanel()Z
    invoke-static {v11}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->access$100(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;)Z

    goto :goto_2

    .line 416
    :cond_6
    const-wide/16 v12, -0x1

    goto :goto_1

    .line 418
    :cond_7
    if-nez v2, :cond_8

    iget-object v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    # invokes: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->showMenu()Z
    invoke-static {v11}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->access$200(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 419
    const-wide/16 v12, -0x1

    goto :goto_1

    .line 421
    :cond_8
    const-wide/16 v12, 0x0

    goto :goto_1

    .line 425
    :cond_9
    const/4 v11, 0x3

    if-ne v5, v11, :cond_15

    .line 426
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    if-eqz v11, :cond_a

    .line 427
    const-string v11, "BaseMiuiPhoneWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ignoring HOME because mTestModeEnabled = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const-wide/16 v12, 0x0

    goto :goto_1

    .line 431
    :cond_a
    if-nez v2, :cond_10

    .line 432
    if-nez v1, :cond_f

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v11, :cond_f

    .line 434
    :try_start_0
    const-string v11, "phone"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    .line 435
    .local v8, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWifiOnly:Z

    if-nez v11, :cond_c

    if-eqz v8, :cond_c

    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->isInCallScreenShowing()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 438
    const-string v11, "WindowManager"

    const-string v12, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    .end local v8    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    :goto_3
    const-wide/16 v12, -0x1

    goto/16 :goto_1

    .line 441
    .restart local v8    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_c
    iget-object v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    if-eqz v11, :cond_d

    iget-object v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 443
    iget-object v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v12, "statusbar"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/StatusBarManager;

    .line 444
    .local v7, "sbm":Landroid/app/StatusBarManager;
    invoke-virtual {v7}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 446
    .end local v7    # "sbm":Landroid/app/StatusBarManager;
    :cond_d
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyguardOnWhenHomeDown:Z

    if-nez v11, :cond_e

    .line 447
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->launchHomeFromHotKey()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 452
    .end local v8    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    .line 453
    .local v3, "ex":Landroid/os/RemoteException;
    const-string v11, "WindowManager"

    const-string v12, "RemoteException from getPhoneInterface()"

    invoke-static {v11, v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 449
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local v8    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_e
    :try_start_1
    const-string v11, "WindowManager"

    const-string v12, "Ignoring HOME; keyguard is on when first Home down"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 456
    .end local v8    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    const-string v11, "WindowManager"

    const-string v12, "Ignoring HOME; event canceled."

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 462
    :cond_10
    if-eqz p1, :cond_12

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 463
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_4
    if-eqz v0, :cond_b

    .line 464
    iget v9, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 465
    .local v9, "type":I
    const/16 v11, 0x7d4

    if-eq v9, v11, :cond_11

    const/16 v11, 0x7d9

    if-ne v9, v11, :cond_13

    .line 468
    :cond_11
    const-wide/16 v12, 0x0

    goto/16 :goto_1

    .line 462
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v9    # "type":I
    :cond_12
    const/4 v0, 0x0

    goto :goto_4

    .line 470
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v9    # "type":I
    :cond_13
    sget-object v11, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v10, v11

    .line 471
    .local v10, "typeCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    if-ge v4, v10, :cond_b

    .line 472
    sget-object v11, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v11, v11, v4

    if-ne v9, v11, :cond_14

    .line 474
    iget-object v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    .line 471
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 483
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "i":I
    .end local v9    # "type":I
    .end local v10    # "typeCount":I
    :cond_15
    invoke-super/range {p0 .. p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v12

    goto/16 :goto_1
.end method

.method public interceptKeyBeforeQueueingInternal(Landroid/view/KeyEvent;IZ)I
    .locals 29
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 637
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSystemBooted:Z

    if-nez v4, :cond_0

    .line 639
    const/4 v4, 0x0

    .line 992
    :goto_0
    return v4

    .line 642
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v6, 0x1

    .line 643
    .local v6, "down":Z
    :goto_1
    const/high16 v4, 0x1000000

    and-int v4, v4, p2

    if-eqz v4, :cond_2

    const/16 v16, 0x1

    .line 645
    .local v16, "isInjected":Z
    :goto_2
    const-string v4, "BaseMiuiPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keyCode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " down:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " policyFlags="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " deviceId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isScreenOn:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mIsVRMode:Z

    if-eqz v4, :cond_3

    .line 651
    const-string v4, "WindowManager"

    const-string v7, "VR mode drop all keys."

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 642
    .end local v6    # "down":Z
    .end local v16    # "isInjected":Z
    :cond_1
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 643
    .restart local v6    # "down":Z
    :cond_2
    const/16 v16, 0x0

    goto :goto_2

    .line 655
    .restart local v16    # "isInjected":Z
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 657
    .local v5, "keyCode":I
    if-nez p3, :cond_5

    .line 658
    const/4 v4, 0x4

    if-eq v4, v5, :cond_4

    const/16 v4, 0x52

    if-ne v4, v5, :cond_5

    .line 659
    :cond_4
    const-string v4, "WindowManager"

    const-string v7, "Drop back or menu key when screen is off"

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 664
    :cond_5
    const/16 v4, 0x52

    if-ne v5, v4, :cond_6

    const/16 v5, 0xbb

    .line 667
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v22

    .line 668
    .local v22, "mode":I
    const/16 v4, 0xe0

    if-ne v5, v4, :cond_7

    const/4 v4, 0x1

    move/from16 v0, v22

    if-ge v0, v4, :cond_7

    .line 669
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$5;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    invoke-virtual {v4, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 680
    :cond_7
    const-string v4, "sys.in_shutdown_progress"

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_8

    .line 682
    const-string v4, "WindowManager"

    const-string v7, "this device is being shut down, ignore key event."

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 685
    :cond_8
    const/16 v4, 0x1a

    if-ne v5, v4, :cond_9

    .line 686
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    if-eqz v4, :cond_9

    .line 687
    const-string v4, "BaseMiuiPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring POWER because mTestModeEnabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 692
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    if-nez v4, :cond_a

    .line 693
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->resetKeyStatus()V

    .line 696
    :cond_a
    const/4 v4, 0x3

    if-ne v5, v4, :cond_b

    if-eqz v6, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_b

    .line 697
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v4

    if-nez v4, :cond_c

    .line 698
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyguardOnWhenHomeDown:Z

    .line 704
    :cond_b
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->isFingerPrintKey(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 705
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->processFingerprintNavigationEvent(Landroid/view/KeyEvent;)I

    move-result v4

    goto/16 :goto_0

    .line 700
    :cond_c
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyguardOnWhenHomeDown:Z

    goto :goto_3

    .line 708
    :cond_d
    const/4 v4, 0x3

    if-ne v5, v4, :cond_e

    if-nez v6, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchIsJustTurnedOn:Z

    if-eqz v4, :cond_e

    .line 709
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchIsJustTurnedOn:Z

    .line 710
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTurnOffTorch:Ljava/lang/Runnable;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v4, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 713
    :cond_e
    const/16 v4, 0x1a

    if-ne v5, v4, :cond_f

    if-eqz v6, :cond_f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    if-eqz v4, :cond_f

    .line 714
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v4, :cond_11

    .line 715
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchIsJustTurnedOn:Z

    .line 716
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTurnOffTorch:Ljava/lang/Runnable;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 724
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_15

    const-string v4, "synaptics_dsx_edge"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "atmel-maxtouch-edge"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 727
    :cond_10
    const/16 v4, 0x78

    if-ne v4, v5, :cond_13

    .line 735
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 719
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    if-nez v4, :cond_12

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->setTorch(Z)Z

    .line 720
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    goto/16 :goto_0

    .line 719
    :cond_12
    const/4 v4, 0x0

    goto :goto_4

    .line 738
    :cond_13
    const/16 v4, 0x1c

    if-ne v4, v5, :cond_14

    .line 747
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 750
    :cond_14
    const/4 v4, 0x4

    if-ne v4, v5, :cond_15

    .line 752
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "edge_handgrip_back"

    const/4 v8, -0x1

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v7, 0x1

    if-eq v4, v7, :cond_15

    .line 754
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 759
    :cond_15
    invoke-static {v5}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v18

    .line 760
    .local v18, "keyBitMask":I
    if-eqz v6, :cond_16

    .line 761
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    or-int v4, v4, v18

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    .line 762
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    or-int v4, v4, v18

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    .line 768
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->handleKeyCombination()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 769
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    goto/16 :goto_0

    .line 765
    :cond_16
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    xor-int/lit8 v7, v18, -0x1

    and-int/2addr v4, v7

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    goto :goto_5

    .line 772
    :cond_17
    const/16 v4, 0x1a

    if-eq v4, v5, :cond_18

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->shouldBeBlocked(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 774
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->forceShow()V

    .line 775
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    goto/16 :goto_0

    .line 778
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mAutoDisableScreenButtonsManager:Lmiui/util/AutoDisableScreenButtonsManager;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSmartCoverLidOpen:Z

    if-nez v8, :cond_19

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mLidState:I

    if-nez v8, :cond_19

    const/4 v8, 0x1

    :goto_6
    move-object/from16 v9, p1

    invoke-virtual/range {v4 .. v9}, Lmiui/util/AutoDisableScreenButtonsManager;->handleDisableButtons(IZZZLandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 781
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 778
    :cond_19
    const/4 v8, 0x0

    goto :goto_6

    .line 784
    :cond_1a
    if-nez v6, :cond_1c

    .line 785
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    .line 795
    :cond_1b
    :goto_7
    const/4 v4, 0x3

    if-ne v5, v4, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mFrontFingerprintSensor:Z

    if-eqz v4, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->inFingerprintEnrolling()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 796
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 786
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1b

    .line 787
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    invoke-static {v5}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v7

    if-ne v4, v7, :cond_1d

    .line 788
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->send(I)V

    goto :goto_7

    .line 791
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    goto :goto_7

    .line 801
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    and-int v4, v4, v18

    if-eqz v4, :cond_1f

    if-nez v6, :cond_1f

    .line 802
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    xor-int/lit8 v7, v18, -0x1

    and-int/2addr v4, v7

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    .line 803
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    goto/16 :goto_0

    .line 806
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    if-nez v4, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_22

    if-nez p3, :cond_22

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_22

    .line 809
    const/16 v19, 0x0

    .line 810
    .local v19, "keyIntent":Landroid/content/Intent;
    const/16 v4, 0x18

    if-eq v5, v4, :cond_20

    const/16 v4, 0x19

    if-ne v5, v4, :cond_23

    .line 813
    :cond_20
    new-instance v19, Landroid/content/Intent;

    .end local v19    # "keyIntent":Landroid/content/Intent;
    const-string v4, "miui.intent.action.CAMERA_KEY_BUTTON"

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 818
    .restart local v19    # "keyIntent":Landroid/content/Intent;
    :cond_21
    :goto_8
    if-eqz v19, :cond_22

    .line 820
    const-string v4, "com.android.camera"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 821
    const-string v4, "key_code"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 822
    const-string v4, "key_action"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 823
    const-string v4, "key_event_time"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 824
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 829
    .end local v19    # "keyIntent":Landroid/content/Intent;
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mVolumeKeyLaunchCamera:Z

    if-eqz v4, :cond_24

    invoke-virtual/range {p0 .. p3}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->interceptVoluemeKeyStartCamera(Landroid/view/KeyEvent;IZ)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 830
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    goto/16 :goto_0

    .line 814
    .restart local v19    # "keyIntent":Landroid/content/Intent;
    :cond_23
    if-eqz v6, :cond_21

    const/16 v4, 0x1a

    if-ne v5, v4, :cond_21

    .line 816
    new-instance v19, Landroid/content/Intent;

    .end local v19    # "keyIntent":Landroid/content/Intent;
    const-string v4, "android.intent.action.KEYCODE_POWER_UP"

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v19    # "keyIntent":Landroid/content/Intent;
    goto :goto_8

    .line 833
    .end local v19    # "keyIntent":Landroid/content/Intent;
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    if-nez v4, :cond_26

    const/16 v20, 0x0

    .line 836
    .local v20, "keyguardActive":Z
    :goto_9
    const-string v4, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keyguardActive="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    if-nez p3, :cond_25

    if-eqz v16, :cond_28

    .line 839
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    if-eqz v4, :cond_2d

    if-eqz v20, :cond_2d

    const/16 v4, 0x1b

    if-ne v5, v4, :cond_2d

    if-nez v6, :cond_2d

    .line 840
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    goto/16 :goto_0

    .line 833
    .end local v20    # "keyguardActive":Z
    :cond_26
    if-eqz p3, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v20

    goto :goto_9

    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->isShowing()Z

    move-result v20

    goto :goto_9

    .line 843
    .restart local v20    # "keyguardActive":Z
    :cond_28
    const/16 v17, 0x1

    .line 844
    .local v17, "isWakeKey":Z
    const/4 v10, 0x0

    .line 847
    .local v10, "allowToWake":Z
    sparse-switch v5, :sswitch_data_0

    .line 868
    const/16 v17, 0x0

    .line 871
    :cond_29
    :goto_a
    if-eqz v17, :cond_2d

    .line 872
    if-eqz v10, :cond_2c

    .line 873
    if-eqz v6, :cond_2a

    .line 875
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    goto/16 :goto_0

    .line 849
    :sswitch_0
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTrackballWakeScreen:Z

    .line 850
    goto :goto_a

    .line 853
    :sswitch_1
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    .line 854
    goto :goto_a

    .line 858
    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    .line 862
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->screenOffBecauseOfProxSensor()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 863
    const/4 v10, 0x0

    goto :goto_a

    .line 878
    :cond_2a
    if-eqz v20, :cond_2b

    .line 879
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    const/16 v7, 0x1a

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->onWakeKeyWhenKeyguardShowingTq(IZ)Z

    .line 881
    :cond_2b
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    goto/16 :goto_0

    .line 884
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getWakePolicyFlag()I

    move-result v4

    xor-int/lit8 v4, v4, -0x1

    and-int p2, p2, v4

    .line 888
    .end local v10    # "allowToWake":Z
    .end local v17    # "isWakeKey":Z
    :cond_2d
    const/16 v4, 0x4f

    if-ne v5, v4, :cond_2f

    .line 889
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "enable_mikey_mode"

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v14

    .line 894
    .local v14, "enabled":Z
    if-eqz v14, :cond_2f

    .line 895
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2e

    .line 896
    new-instance v21, Landroid/content/Intent;

    const-string v4, "miui.intent.action.MIKEY_BUTTON"

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 897
    .local v21, "mikeyIntent":Landroid/content/Intent;
    const-string v4, "com.xiaomi.miclick"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    const-string v4, "key_action"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 899
    const-string v4, "key_event_time"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v8

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 900
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 903
    .end local v21    # "mikeyIntent":Landroid/content/Intent;
    :cond_2e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    goto/16 :goto_0

    .line 907
    .end local v14    # "enabled":Z
    :cond_2f
    if-eqz v6, :cond_3c

    .line 911
    if-eqz p3, :cond_31

    if-nez v20, :cond_31

    const/16 v4, 0x1a

    if-eq v5, v4, :cond_30

    const/16 v4, 0x19

    if-eq v5, v4, :cond_30

    const/16 v4, 0x18

    if-eq v5, v4, :cond_30

    const/16 v4, 0xa4

    if-eq v5, v4, :cond_30

    const/16 v4, 0x4f

    if-ne v5, v4, :cond_31

    .line 916
    :cond_30
    new-instance v15, Landroid/content/Intent;

    const-string v4, "miui.intent.action.KEYCODE_EXTERNAL"

    invoke-direct {v15, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 917
    .local v15, "i":Landroid/content/Intent;
    const-string v4, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p1

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 918
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v15, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 919
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->sendAsyncBroadcast(Landroid/content/Intent;)V

    .line 923
    .end local v15    # "i":Landroid/content/Intent;
    :cond_31
    const/16 v4, 0x1a

    if-ne v5, v4, :cond_36

    const/16 v27, 0x1

    .line 924
    .local v27, "stopNotification":Z
    :goto_b
    if-nez v27, :cond_33

    .line 925
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getWindownManagerService()Landroid/view/IWindowManager;

    move-result-object v28

    .line 926
    .local v28, "wm":Landroid/view/IWindowManager;
    if-eqz v28, :cond_33

    invoke-interface/range {v28 .. v28}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 927
    const/16 v4, 0x19

    if-eq v5, v4, :cond_32

    const/16 v4, 0x18

    if-eq v5, v4, :cond_32

    const/16 v4, 0xa4

    if-ne v5, v4, :cond_33

    .line 930
    :cond_32
    const/16 v27, 0x1

    .line 935
    .end local v28    # "wm":Landroid/view/IWindowManager;
    :cond_33
    if-eqz v27, :cond_34

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSystemReady:Z

    if-eqz v4, :cond_34

    .line 936
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v26

    .line 937
    .local v26, "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v26, :cond_34

    .line 938
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->onStatusBarPanelRevealed(Lcom/android/internal/statusbar/IStatusBarService;)V

    .line 942
    .end local v26    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_34
    const/16 v4, 0x19

    if-eq v5, v4, :cond_35

    const/16 v4, 0x18

    if-ne v5, v4, :cond_38

    .line 944
    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 945
    .local v11, "cr":Landroid/content/ContentResolver;
    const-string v4, "remote_control_proc_name"

    invoke-static {v11, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 946
    .local v24, "proc":Ljava/lang/String;
    const-string v4, "remote_control_pkg_name"

    invoke-static {v11, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 948
    .local v23, "pkg":Ljava/lang/String;
    if-eqz v24, :cond_38

    if-eqz v23, :cond_38

    .line 949
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 950
    .local v12, "c":J
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->checkProcessRunning(Ljava/lang/String;)Z

    move-result v25

    .line 954
    .local v25, "running":Z
    if-eqz v25, :cond_37

    .line 955
    new-instance v15, Landroid/content/Intent;

    const-string v4, "miui.intent.action.REMOTE_CONTROL"

    invoke-direct {v15, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 956
    .restart local v15    # "i":Landroid/content/Intent;
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 957
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v15, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 958
    const-string v4, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p1

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 959
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->sendAsyncBroadcast(Landroid/content/Intent;)V

    .line 960
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    goto/16 :goto_0

    .line 923
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v12    # "c":J
    .end local v15    # "i":Landroid/content/Intent;
    .end local v23    # "pkg":Ljava/lang/String;
    .end local v24    # "proc":Ljava/lang/String;
    .end local v25    # "running":Z
    .end local v27    # "stopNotification":Z
    :cond_36
    const/16 v27, 0x0

    goto/16 :goto_b

    .line 962
    .restart local v11    # "cr":Landroid/content/ContentResolver;
    .restart local v12    # "c":J
    .restart local v23    # "pkg":Ljava/lang/String;
    .restart local v24    # "proc":Ljava/lang/String;
    .restart local v25    # "running":Z
    .restart local v27    # "stopNotification":Z
    :cond_37
    const-string v4, "remote_control_proc_name"

    const/4 v7, 0x0

    invoke-static {v11, v4, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 963
    const-string v4, "remote_control_pkg_name"

    const/4 v7, 0x0

    invoke-static {v11, v4, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v12    # "c":J
    .end local v23    # "pkg":Ljava/lang/String;
    .end local v24    # "proc":Ljava/lang/String;
    .end local v25    # "running":Z
    .end local v27    # "stopNotification":Z
    :cond_38
    :goto_c
    if-eqz v6, :cond_3a

    const/16 v4, 0x18

    if-eq v4, v5, :cond_39

    const/16 v4, 0x19

    if-ne v4, v5, :cond_3a

    .line 976
    :cond_39
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSuperWaitingKey:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 978
    :cond_3a
    if-eqz v6, :cond_3b

    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_3b

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_3b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-nez v4, :cond_3b

    .line 981
    sparse-switch v5, :sswitch_data_1

    .line 992
    :cond_3b
    :goto_d
    invoke-virtual/range {p0 .. p3}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->callSuperInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v4

    goto/16 :goto_0

    .line 970
    :cond_3c
    const/16 v4, 0x1a

    if-ne v5, v4, :cond_38

    .line 971
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.KEYCODE_POWER_UP"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->sendAsyncBroadcast(Landroid/content/Intent;)V

    goto :goto_c

    .line 987
    :sswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->playSoundEffect()Z

    goto :goto_d

    .line 967
    .restart local v27    # "stopNotification":Z
    :catch_0
    move-exception v4

    goto :goto_c

    .line 847
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1b -> :sswitch_1
        0x110 -> :sswitch_0
    .end sparse-switch

    .line 981
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_3
        0x52 -> :sswitch_3
        0x54 -> :sswitch_3
        0xbb -> :sswitch_3
    .end sparse-switch
.end method

.method protected interceptVoluemeKeyStartCamera(Landroid/view/KeyEvent;IZ)Z
    .locals 14
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 1924
    const/4 v3, 0x0

    .line 1925
    .local v3, "intercept":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_2

    const/4 v1, 0x1

    .line 1926
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 1931
    .local v6, "keyCode":I
    const/high16 v7, 0x1000000

    and-int v7, v7, p2

    if-eqz v7, :cond_3

    const/4 v5, 0x1

    .line 1932
    .local v5, "isInjected":Z
    :goto_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v0, 0x1

    .line 1933
    .local v0, "KeyguardNotActive":Z
    :goto_2
    if-nez v5, :cond_1

    if-eqz p3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->isAudioActive()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_1
    move v4, v3

    .line 1957
    .end local v3    # "intercept":Z
    .local v4, "intercept":I
    :goto_3
    return v4

    .line 1925
    .end local v0    # "KeyguardNotActive":Z
    .end local v1    # "down":Z
    .end local v4    # "intercept":I
    .end local v5    # "isInjected":Z
    .end local v6    # "keyCode":I
    .restart local v3    # "intercept":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1931
    .restart local v1    # "down":Z
    .restart local v6    # "keyCode":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1932
    .restart local v5    # "isInjected":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 1937
    .restart local v0    # "KeyguardNotActive":Z
    :cond_5
    const/16 v7, 0x19

    if-ne v6, v7, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_6

    .line 1939
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1940
    .local v8, "now":J
    iget-wide v10, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mVolumeButtonPrePressedTime:J

    sub-long v10, v8, v10

    const-wide/16 v12, 0x12c

    cmp-long v7, v10, v12

    if-gez v7, :cond_7

    .line 1941
    iget-wide v10, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mVolumeButtonPressedCount:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mVolumeButtonPressedCount:J

    .line 1946
    :goto_4
    iget-wide v10, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mVolumeButtonPressedCount:J

    const-wide/16 v12, 0x2

    cmp-long v7, v10, v12

    if-ltz v7, :cond_6

    .line 1947
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getCameraIntent()Landroid/content/Intent;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    .line 1949
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v10, 0x1388

    invoke-virtual {v7, v10, v11}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1950
    iget-object v7, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v10, v11}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1951
    const/4 v3, 0x1

    .end local v8    # "now":J
    :cond_6
    :goto_5
    move v4, v3

    .line 1957
    .restart local v4    # "intercept":I
    goto :goto_3

    .line 1943
    .end local v4    # "intercept":I
    .restart local v8    # "now":J
    :cond_7
    const-wide/16 v10, 0x1

    iput-wide v10, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mVolumeButtonPressedCount:J

    .line 1944
    iput-wide v8, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mVolumeButtonPrePressedTime:J

    goto :goto_4

    .line 1952
    :catch_0
    move-exception v2

    .line 1953
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v7, "WindowManager"

    const-string v10, "mCameraIntent problem"

    invoke-static {v7, v10, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method isAutoBrightnessMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1847
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected isFingerPrintKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1994
    const/4 v0, 0x0

    return v0
.end method

.method protected isInLockTaskMode()Z
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    return v0
.end method

.method isPhoneOffhook()Z
    .locals 3

    .prologue
    .line 1800
    const/4 v0, 0x0

    .line 1802
    .local v0, "isOffhook":Z
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1803
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 1804
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1809
    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v0

    .line 1806
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected abstract isScreenOnInternal()Z
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 11
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 324
    const-string v2, "persist.sys.smartcover_mode"

    invoke-static {v2, v3}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 326
    .local v1, "smartcoverMode":I
    if-nez v1, :cond_0

    .line 327
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSmartCoverLidOpen:Z

    .line 328
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mLidState:I

    .line 368
    :goto_0
    return-void

    .line 332
    :cond_0
    iput-boolean p3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSmartCoverLidOpen:Z

    .line 335
    const-wide/32 v6, 0x7fffffff

    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screen_off_timeout"

    sget v8, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->LID_CLOSE_SCREEN_OFF_TIMEOUT_VALUE:I

    int-to-long v8, v8

    invoke-static {v2, v5, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-nez v2, :cond_5

    move v0, v3

    .line 337
    .local v0, "isTimeoutMax":Z
    :goto_1
    if-eqz v0, :cond_6

    if-nez p3, :cond_6

    .line 338
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screen_off_timeout"

    sget v6, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->LID_CLOSE_SCREEN_OFF_TIMEOUT_VALUE:I

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 339
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mNeedResetTimeout:Z

    .line 345
    :cond_1
    :goto_2
    if-nez p3, :cond_2

    .line 346
    const-string v2, "sys.keyguard.screen_off_by_lid"

    const-string v5, "true"

    invoke-static {v2, v5}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSystemBooted:Z

    if-eqz v2, :cond_3

    .line 350
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "miui.intent.action.SMART_COVER"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "is_smart_cover_open"

    invoke-virtual {v5, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 354
    :cond_3
    const/4 v2, 0x2

    if-gt v2, v1, :cond_4

    .line 355
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "is_small_window"

    if-nez p3, :cond_7

    move v2, v3

    :goto_3
    iget v7, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v5, v6, v2, v7}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 357
    if-nez p3, :cond_8

    .line 358
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 365
    :cond_4
    :goto_4
    if-ne v3, v1, :cond_9

    :goto_5
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mLidControlsSleep:Z

    .line 367
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyLidSwitchChanged(JZ)V

    goto :goto_0

    .end local v0    # "isTimeoutMax":Z
    :cond_5
    move v0, v4

    .line 335
    goto :goto_1

    .line 340
    .restart local v0    # "isTimeoutMax":Z
    :cond_6
    if-eqz p3, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mNeedResetTimeout:Z

    if-eqz v2, :cond_1

    .line 341
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screen_off_timeout"

    const v6, 0x7fffffff

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 342
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mNeedResetTimeout:Z

    goto :goto_2

    :cond_7
    move v2, v4

    .line 355
    goto :goto_3

    .line 360
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->restoreScreenBrightnessByLid()V

    .line 361
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_4

    :cond_9
    move v3, v4

    .line 365
    goto :goto_5
.end method

.method protected abstract onStatusBarPanelRevealed(Lcom/android/internal/statusbar/IStatusBarService;)V
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    .line 1525
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->isPhoneOffhook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1527
    const/4 v0, 0x0

    .line 1534
    :goto_0
    return v0

    .line 1530
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p2}, Lmiui/util/HapticFeedbackUtil;->isSupportedEffect(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1531
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p2, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    move-result v0

    goto :goto_0

    .line 1534
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v0

    goto :goto_0
.end method

.method protected processFingerprintNavigationEvent(Landroid/view/KeyEvent;)I
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 631
    const/4 v0, -0x1

    return v0
.end method

.method protected registerStatusBarInputEventReceiver()V
    .locals 0

    .prologue
    .line 1128
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 247
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 248
    return-void
.end method

.method restoreScreenBrightnessByLid()V
    .locals 8

    .prologue
    .line 1827
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 1828
    .local v1, "power":Landroid/os/IPowerManager;
    iget-object v5, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1830
    .local v2, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->isAutoBrightnessMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1831
    const-string v5, "screen_auto_brightness_adj"

    const/high16 v6, 0x7fc00000    # NaNf

    const/4 v7, -0x2

    invoke-static {v2, v5, v6, v7}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v3

    .line 1834
    .local v3, "screenAutoBrightnessAdjustmentSetting":F
    invoke-interface {v1, v3}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    .line 1844
    .end local v3    # "screenAutoBrightnessAdjustmentSetting":F
    :goto_0
    return-void

    .line 1836
    :cond_0
    const-string v5, "screen_brightness"

    iget-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v6

    const/4 v7, -0x2

    invoke-static {v2, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 1839
    .local v4, "screenBrightnessSetting":I
    invoke-interface {v1, v4}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1841
    .end local v4    # "screenBrightnessSetting":I
    :catch_0
    move-exception v0

    .line 1842
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected abstract screenOffBecauseOfProxSensor()Z
.end method

.method protected screenTurnedOffInternal(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->resetKeyStatus()V

    .line 316
    iput p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenOffReason:I

    .line 317
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->releaseScreenOnProximitySensor()V

    .line 318
    return-void
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 6
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    const/4 v4, -0x1

    .line 276
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 277
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    if-eqz v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->onScreenTurnedOnWithoutListener()V

    .line 282
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_screen_on_proximity_sensor"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 285
    .local v0, "pSensorEnableInt":I
    if-ne v0, v4, :cond_4

    .line 286
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_screen_on_proximity_sensor"

    iget-object v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11090013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 289
    .local v1, "proximitySensorEnableSettings":Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_screen_on_proximity_sensor"

    invoke-static {v2, v3, v1}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 296
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/MiuiSettings$System;->isInSmallWindowMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mIsVRMode:Z

    if-nez v2, :cond_1

    .line 301
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->aquire()V

    .line 305
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSmartCoverLidOpen:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/MiuiSettings$System;->isInSmallWindowMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 306
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->setMaxTemporaryScreenBrightness()V

    .line 309
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSmartCoverLidOpen:Z

    if-eqz v2, :cond_3

    .line 310
    const-string v2, "sys.keyguard.screen_off_by_lid"

    const-string v3, "false"

    invoke-static {v2, v3}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_3
    return-void

    .line 293
    .end local v1    # "proximitySensorEnableSettings":Z
    :cond_4
    if-eqz v0, :cond_5

    const/4 v1, 0x1

    .restart local v1    # "proximitySensorEnableSettings":Z
    :goto_1
    goto :goto_0

    .end local v1    # "proximitySensorEnableSettings":Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method sendAsyncBroadcast(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1854
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 1855
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$12;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$12;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1862
    :cond_0
    return-void
.end method

.method sendAsyncBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    .prologue
    .line 1865
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 1866
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$13;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1873
    :cond_0
    return-void
.end method

.method public setCurrentUserLw(I)V
    .locals 4
    .param p1, "newUserId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1637
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setCurrentUserLw(I)V

    .line 1638
    iput p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    .line 1639
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mAutoDisableScreenButtonsManager:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-virtual {v1, p1}, Lmiui/util/AutoDisableScreenButtonsManager;->onUserSwitch(I)V

    .line 1640
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->onChange(Z)V

    .line 1642
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "is_small_window"

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSmartCoverLidOpen:Z

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 1644
    return-void
.end method

.method setMaxTemporaryScreenBrightness()V
    .locals 4

    .prologue
    .line 1813
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 1815
    .local v2, "power":Landroid/os/IPowerManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->isAutoBrightnessMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1816
    const/high16 v0, 0x3f000000    # 0.5f

    .line 1817
    .local v0, "autoBrightnessAdjustment":F
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-interface {v2, v3}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    .line 1824
    .end local v0    # "autoBrightnessAdjustment":F
    :goto_0
    return-void

    .line 1819
    :cond_0
    const/16 v3, 0xff

    invoke-interface {v2, v3}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1821
    :catch_0
    move-exception v1

    .line 1822
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1743
    return-void
.end method

.method protected stopLockTaskMode()Z
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x0

    return v0
.end method

.method protected systemReadyInternal()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 251
    iget-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 252
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    const-string v6, "android.hardware.sensor.proximity"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 253
    new-instance v6, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    iget-object v7, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    invoke-direct {v6, v7, v8}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    .line 256
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "torch_state"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 257
    iget-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_test_mode_on"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 259
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mIsVRMode:Z

    .line 260
    iget-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "vr_mode"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 261
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6, v10}, Lmiui/core/SdkManager;->initialize(Landroid/app/Application;Ljava/util/Map;)I

    .line 262
    invoke-static {v10}, Lmiui/core/SdkManager;->start(Ljava/util/Map;)I

    .line 263
    const-string v6, "front_fingerprint_sensor"

    invoke-static {v6, v9}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mFrontFingerprintSensor:Z

    .line 265
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mFpNavEventNameList:Ljava/util/List;

    .line 266
    const-string v6, "fp_nav_event_name_list"

    invoke-static {v6}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 267
    .local v5, "strArray":[Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 268
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 269
    .local v4, "str":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mFpNavEventNameList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected unregisterStatusBarInputEventReceiver()V
    .locals 0

    .prologue
    .line 1129
    return-void
.end method
