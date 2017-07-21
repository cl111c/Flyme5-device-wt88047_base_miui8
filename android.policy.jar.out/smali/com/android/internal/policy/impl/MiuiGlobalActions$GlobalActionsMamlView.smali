.class final Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;
.super Lmiui/maml/component/MamlView;
.source "MiuiGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GlobalActionsMamlView"
.end annotation


# instance fields
.field private mCancelOnUp:Z

.field private mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

.field private mIntercepted:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;Landroid/content/Context;Lmiui/maml/ScreenElementRoot;J)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p4, "startDelay"    # J

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    .line 379
    invoke-direct {p0, p2, p3, p4, p5}, Lmiui/maml/component/MamlView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;J)V

    .line 380
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->canEnableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    new-instance v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView$1;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView$1;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;Lcom/android/internal/policy/impl/MiuiGlobalActions;)V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/EnableAccessibilityController;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .line 391
    :goto_0
    return-void

    .line 389
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 395
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    if-eqz v2, :cond_2

    .line 396
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 398
    .local v8, "action":I
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->mIntercepted:Z

    if-nez v2, :cond_4

    .line 399
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->mIntercepted:Z

    .line 400
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->mIntercepted:Z

    if-eqz v2, :cond_0

    .line 401
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 402
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 404
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 405
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->mCancelOnUp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    .end local v0    # "now":J
    :cond_0
    if-ne v8, v10, :cond_2

    .line 412
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->mCancelOnUp:Z

    if-eqz v2, :cond_1

    .line 413
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$200(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 415
    :cond_1
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->mCancelOnUp:Z

    .line 416
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->mIntercepted:Z

    .line 420
    .end local v8    # "action":I
    :cond_2
    invoke-super {p0, p1}, Lmiui/maml/component/MamlView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_3
    :goto_0
    return v2

    .line 408
    .restart local v8    # "action":I
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 411
    if-ne v8, v10, :cond_3

    .line 412
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->mCancelOnUp:Z

    if-eqz v3, :cond_5

    .line 413
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$200(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 415
    :cond_5
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->mCancelOnUp:Z

    .line 416
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->mIntercepted:Z

    goto :goto_0

    .line 411
    :catchall_0
    move-exception v2

    if-ne v8, v10, :cond_7

    .line 412
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->mCancelOnUp:Z

    if-eqz v3, :cond_6

    .line 413
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$200(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 415
    :cond_6
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->mCancelOnUp:Z

    .line 416
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->mIntercepted:Z

    :cond_7
    throw v2
.end method
