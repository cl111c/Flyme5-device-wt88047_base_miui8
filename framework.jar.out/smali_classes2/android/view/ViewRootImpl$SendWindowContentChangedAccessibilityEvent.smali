.class Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendWindowContentChangedAccessibilityEvent"
.end annotation


# instance fields
.field private mChangeTypes:I

.field public mLastEventTimeMillis:J

.field public mSource:Landroid/view/View;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method private constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1

    .prologue
    .line 6987
    iput-object p1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6988
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/ViewRootImpl;
    .param p2, "x1"    # Landroid/view/ViewRootImpl$1;

    .prologue
    .line 6987
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;-><init>(Landroid/view/ViewRootImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6996
    iget-object v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6997
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mLastEventTimeMillis:J

    .line 6998
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 6999
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 7000
    iget v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 7001
    iget-object v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7006
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    .line 7007
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    .line 7008
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    .line 7009
    return-void

    .line 7003
    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mLastEventTimeMillis:J

    goto :goto_0
.end method

.method public runOrPost(Landroid/view/View;I)V
    .locals 10
    .param p1, "source"    # Landroid/view/View;
    .param p2, "changeType"    # I

    .prologue
    .line 7012
    iget-object v3, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 7015
    iget-object v3, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    # invokes: Landroid/view/ViewRootImpl;->getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    invoke-static {v3, v6, p1}, Landroid/view/ViewRootImpl;->access$2400(Landroid/view/ViewRootImpl;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 7016
    .local v2, "predecessor":Landroid/view/View;
    if-eqz v2, :cond_0

    .end local v2    # "predecessor":Landroid/view/View;
    :goto_0
    iput-object v2, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    .line 7017
    iget v3, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    or-int/2addr v3, p2

    iput v3, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    .line 7031
    :goto_1
    return-void

    .restart local v2    # "predecessor":Landroid/view/View;
    :cond_0
    move-object v2, p1

    .line 7016
    goto :goto_0

    .line 7020
    .end local v2    # "predecessor":Landroid/view/View;
    :cond_1
    iput-object p1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    .line 7021
    iput p2, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    .line 7022
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mLastEventTimeMillis:J

    sub-long v4, v6, v8

    .line 7023
    .local v4, "timeSinceLastMillis":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v0

    .line 7025
    .local v0, "minEventIntevalMillis":J
    cmp-long v3, v4, v0

    if-ltz v3, :cond_2

    .line 7026
    iget-object v3, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7027
    invoke-virtual {p0}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->run()V

    goto :goto_1

    .line 7029
    :cond_2
    iget-object v3, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    sub-long v6, v0, v4

    invoke-virtual {v3, p0, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
