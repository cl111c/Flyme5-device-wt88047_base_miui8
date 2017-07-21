.class Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;
.super Landroid/database/ContentObserver;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiuiSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1539
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .line 1540
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1541
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1544
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1545
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "trackball_wake_screen"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1547
    const-string v1, "camera_key_preferred_action_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1549
    const-string v1, "camera_key_preferred_action_shortcut_id"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1551
    const-string v1, "volumekey_wake_screen"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1553
    const-string v1, "volumekey_launch_camera"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1555
    const-string v1, "auto_test_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1557
    const-string v1, "key_long_press_volume_down"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1559
    const-string v1, "screen_key_press_app_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1561
    const-string v1, "torch_state"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1563
    const-string v1, "vr_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1565
    const-string v1, "gesture_wakeup"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1568
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->onChange(Z)V

    .line 1569
    return-void
.end method

.method public onChange(Z)V
    .locals 12
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1573
    iget-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v7, v6, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1574
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1576
    .local v3, "resolver":Landroid/content/ContentResolver;
    iget-object v8, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const-string v6, "trackball_wake_screen"

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1200(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)I

    move-result v10

    invoke-static {v3, v6, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_3

    move v6, v4

    :goto_0
    iput-boolean v6, v8, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTrackballWakeScreen:Z

    .line 1578
    iget-object v8, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const-string v6, "volumekey_wake_screen"

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1200(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)I

    move-result v10

    invoke-static {v3, v6, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_4

    move v6, v4

    :goto_1
    iput-boolean v6, v8, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    .line 1580
    iget-object v8, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const-string v6, "volumekey_launch_camera"

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1200(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)I

    move-result v10

    invoke-static {v3, v6, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_5

    move v6, v4

    :goto_2
    iput-boolean v6, v8, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mVolumeKeyLaunchCamera:Z

    .line 1582
    iget-object v8, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const-string v6, "screen_key_press_app_switch"

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1200(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)I

    move-result v10

    invoke-static {v3, v6, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_6

    move v6, v4

    :goto_3
    # setter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mPressToAppSwitch:Z
    invoke-static {v8, v6}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2202(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Z)Z

    .line 1585
    iget-object v8, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const-string v6, "torch_state"

    const/4 v9, 0x0

    invoke-static {v3, v6, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_7

    move v6, v4

    :goto_4
    # setter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z
    invoke-static {v8, v6}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$302(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Z)Z

    .line 1587
    iget-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z
    invoke-static {v6}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1588
    iget-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTurnOffTorch:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2300(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1590
    :cond_0
    const-string v6, "camera_key_preferred_action_type"

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v9}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1200(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)I

    move-result v9

    invoke-static {v3, v6, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1593
    .local v1, "cameraKeyActionType":I
    if-ne v4, v1, :cond_9

    .line 1594
    iget-object v8, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const/4 v6, 0x4

    const-string v9, "camera_key_preferred_action_shortcut_id"

    const/4 v10, -0x1

    iget-object v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1200(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)I

    move-result v11

    invoke-static {v3, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v6, v9, :cond_8

    move v6, v4

    :goto_5
    iput-boolean v6, v8, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    .line 1602
    :goto_6
    iget-object v8, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const-string v6, "auto_test_mode_on"

    const/4 v9, 0x0

    invoke-static {v3, v6, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_a

    move v6, v4

    :goto_7
    iput-boolean v6, v8, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    .line 1603
    const-string v6, "key_long_press_volume_down"

    iget-object v8, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v8}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1200(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)I

    move-result v8

    invoke-static {v3, v6, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1605
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 1606
    const-string v6, "Street-snap"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "Street-snap-picture"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "Street-snap-movie"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1609
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const/4 v8, 0x1

    # setter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I
    invoke-static {v6, v8}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2402(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;I)I

    .line 1621
    :goto_8
    iget-object v8, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const-string v6, "vr_mode"

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1200(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)I

    move-result v10

    invoke-static {v3, v6, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_e

    move v6, v4

    :goto_9
    # setter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mIsVRMode:Z
    invoke-static {v8, v6}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2502(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Z)Z

    .line 1622
    iget-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const-string v8, "gesture_wakeup"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v3, v8, v9, v10}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v8

    iput-boolean v8, v6, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mGestureWakeupEnabled:Z

    .line 1623
    const-string v6, "wake_gesture_enabled"

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v9}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1200(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)I

    move-result v9

    invoke-static {v3, v6, v8, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_f

    move v2, v4

    .line 1626
    .local v2, "mSuperGestureWakeupEnabled":Z
    :goto_a
    iget-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-boolean v6, v6, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mGestureWakeupEnabled:Z

    if-eq v6, v2, :cond_2

    .line 1627
    const-string v6, "wake_gesture_enabled"

    iget-object v8, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-boolean v8, v8, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mGestureWakeupEnabled:Z

    if-eqz v8, :cond_10

    :goto_b
    iget-object v5, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1200(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)I

    move-result v5

    invoke-static {v3, v6, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1629
    :cond_2
    monitor-exit v7

    .line 1630
    return-void

    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "cameraKeyActionType":I
    .end local v2    # "mSuperGestureWakeupEnabled":Z
    :cond_3
    move v6, v5

    .line 1576
    goto/16 :goto_0

    :cond_4
    move v6, v5

    .line 1578
    goto/16 :goto_1

    :cond_5
    move v6, v5

    .line 1580
    goto/16 :goto_2

    :cond_6
    move v6, v5

    .line 1582
    goto/16 :goto_3

    :cond_7
    move v6, v5

    .line 1585
    goto/16 :goto_4

    .restart local v1    # "cameraKeyActionType":I
    :cond_8
    move v6, v5

    .line 1594
    goto/16 :goto_5

    .line 1600
    :cond_9
    iget-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    goto/16 :goto_6

    .line 1629
    .end local v1    # "cameraKeyActionType":I
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "cameraKeyActionType":I
    .restart local v3    # "resolver":Landroid/content/ContentResolver;
    :cond_a
    move v6, v5

    .line 1602
    goto/16 :goto_7

    .line 1611
    .restart local v0    # "action":Ljava/lang/String;
    :cond_b
    :try_start_1
    const-string v6, "public_transportation_shortcuts"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1612
    iget-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const/4 v8, 0x2

    # setter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I
    invoke-static {v6, v8}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2402(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;I)I

    goto :goto_8

    .line 1615
    :cond_c
    iget-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const/4 v8, 0x0

    # setter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I
    invoke-static {v6, v8}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2402(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;I)I

    goto :goto_8

    .line 1618
    :cond_d
    const-string v6, "key_long_press_volume_down"

    const-string v8, "none"

    iget-object v9, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v9}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1200(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)I

    move-result v9

    invoke-static {v3, v6, v8, v9}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_8

    :cond_e
    move v6, v5

    .line 1621
    goto :goto_9

    :cond_f
    move v2, v5

    .line 1623
    goto :goto_a

    .restart local v2    # "mSuperGestureWakeupEnabled":Z
    :cond_10
    move v4, v5

    .line 1627
    goto :goto_b
.end method
