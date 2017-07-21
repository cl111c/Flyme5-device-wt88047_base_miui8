.class public Lcom/android/server/lights/MiuiLightsService$LightImpl;
.super Lcom/android/server/lights/LightsService$LightImpl;
.source "MiuiLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/MiuiLightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LightImpl"
.end annotation


# instance fields
.field private mBrightnessMode:I

.field private mColor:I

.field private mDisabled:Z

.field private mId:I

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field final synthetic this$0:Lcom/android/server/lights/MiuiLightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/MiuiLightsService;I)V
    .locals 3
    .param p2, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 82
    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    .line 83
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;II)V

    .line 84
    iput p2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    .line 85
    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mDisabled:Z

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/MiuiLightsService;ILcom/android/server/lights/MiuiLightsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/lights/MiuiLightsService;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/lights/MiuiLightsService$1;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;-><init>(Lcom/android/server/lights/MiuiLightsService;I)V

    return-void
.end method

.method private realSetLightLocked(IIIII)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .prologue
    .line 153
    invoke-super/range {p0 .. p5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 154
    return-void
.end method

.method private updateState(IIIII)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    .line 158
    iput p2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mMode:I

    .line 159
    iput p3, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOnMS:I

    .line 160
    iput p4, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOffMS:I

    .line 161
    iput p5, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mBrightnessMode:I

    .line 162
    return-void
.end method


# virtual methods
.method setFlashing(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "colorSettingKey"    # Ljava/lang/String;
    .param p2, "freqSettingKey"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 90
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->access$400(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x110d0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 92
    .local v1, "defaultColor":I
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->access$500(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v2, p1, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 95
    .local v0, "color":I
    const/16 v2, 0x1f4

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v4, v2, v3}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->setFlashing(IIII)V

    .line 97
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->access$600(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->access$600(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/lights/MiuiLightsService;->access$600(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v4, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 99
    return-void
.end method

.method setLightLocked(IIIII)V
    .locals 10
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v1, 0x0

    .line 114
    iget v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-ne v2, v7, :cond_1

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->access$1000(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/BatteryManagerInternal;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->access$1000(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/BatteryManagerInternal;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v6, 0x1

    .line 118
    .local v6, "forceOn":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mDisabled:Z

    if-eqz v2, :cond_2

    if-nez v6, :cond_2

    .line 119
    invoke-direct/range {p0 .. p5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateState(IIIII)V

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 120
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->realSetLightLocked(IIIII)V

    .line 150
    :cond_0
    :goto_1
    return-void

    .end local v6    # "forceOn":Z
    :cond_1
    move v6, v1

    .line 114
    goto :goto_0

    .line 124
    .restart local v6    # "forceOn":Z
    :cond_2
    iget v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-ne v2, v8, :cond_5

    .line 125
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget-object v2, v2, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v0, v2, v7

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .line 127
    .local v0, "batteryLight":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    if-eqz p1, :cond_3

    iget v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    if-nez v2, :cond_3

    iget v2, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    if-eqz v2, :cond_3

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 128
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->realSetLightLocked(IIIII)V

    .line 138
    .end local v0    # "batteryLight":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    :cond_3
    invoke-direct/range {p0 .. p5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateState(IIIII)V

    .line 139
    invoke-direct/range {p0 .. p5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->realSetLightLocked(IIIII)V

    .line 141
    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-ne v1, v8, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget-object v1, v1, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v0, v1, v7

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .line 144
    .restart local v0    # "batteryLight":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    if-nez v1, :cond_0

    iget v1, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mDisabled:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$1000(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/BatteryManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$1000(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/BatteryManagerInternal;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    :cond_4
    iget v1, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    iget v2, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mMode:I

    iget v3, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOnMS:I

    iget v4, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOffMS:I

    iget v5, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mBrightnessMode:I

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->realSetLightLocked(IIIII)V

    goto :goto_1

    .line 130
    .end local v0    # "batteryLight":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    :cond_5
    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-ne v1, v7, :cond_3

    .line 132
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget-object v1, v1, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v1, v1, v8

    check-cast v1, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    iget v1, v1, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    if-eqz v1, :cond_3

    .line 133
    invoke-direct/range {p0 .. p5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateState(IIIII)V

    goto :goto_1
.end method

.method updateLight()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    monitor-enter p0

    .line 103
    const/4 v2, 0x2

    :try_start_0
    iget v3, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-ne v2, v3, :cond_3

    .line 104
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->isDisableButtonLight()Z
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->access$700(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->isTurnOnButtonLight()Z
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->access$800(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v1, v0

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mDisabled:Z

    .line 108
    :cond_2
    :goto_0
    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    iget v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mMode:I

    iget v3, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOnMS:I

    iget v4, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOffMS:I

    iget v5, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mBrightnessMode:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->setLightLocked(IIIII)V

    .line 109
    monitor-exit p0

    .line 110
    return-void

    .line 105
    :cond_3
    const/4 v2, 0x3

    iget v3, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-ne v2, v3, :cond_2

    .line 106
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->isTurnOnBatteryLight()Z
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->access$900(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mDisabled:Z

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v0, v1

    .line 106
    goto :goto_1
.end method
