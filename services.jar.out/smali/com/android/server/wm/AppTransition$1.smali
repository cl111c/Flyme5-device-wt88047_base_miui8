.class Lcom/android/server/wm/AppTransition$1;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/AppTransition;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AppTransition;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppTransition;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/server/wm/AppTransition$1;->this$0:Lcom/android/server/wm/AppTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .param p1, "input"    # F

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 216
    cmpg-float v1, p1, v2

    if-gez v1, :cond_0

    .line 217
    const/4 v1, 0x0

    .line 221
    :goto_0
    return v1

    .line 219
    :cond_0
    sub-float v1, p1, v2

    div-float v0, v1, v2

    .line 221
    .local v0, "t":F
    iget-object v1, p0, Lcom/android/server/wm/AppTransition$1;->this$0:Lcom/android/server/wm/AppTransition;

    # getter for: Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->access$000(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    goto :goto_0
.end method
