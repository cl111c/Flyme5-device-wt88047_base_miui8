.class Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

.field final synthetic val$msg:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1653
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->val$msg:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 1655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v16

    if-nez v16, :cond_0

    .line 1656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x110c0007

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10$1;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;Landroid/content/Context;I)V

    # setter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static/range {v16 .. v17}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2602(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v16

    const v17, 0x11030004

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 1680
    .local v15, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x7e5

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setType(I)V

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x502

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->addFlags(I)V

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setDimAmount(F)V

    .line 1688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 1689
    .local v8, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v16, 0x5

    move/from16 v0, v16

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->show()V

    .line 1694
    const v16, 0x110b0016

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1695
    .local v5, "bootLogo":Landroid/widget/ImageView;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v17, v0

    const v16, 0x110b0019

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ProgressBar;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    # setter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2702(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 1697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2700(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/widget/ProgressBar;

    move-result-object v16

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x11080008

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    # setter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;
    invoke-static/range {v16 .. v17}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2802(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;[Ljava/lang/String;)[Ljava/lang/String;

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2800(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2800(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_0

    .line 1701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v17, v0

    const v16, 0x110b0018

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    # setter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2902(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2900(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/widget/TextView;

    move-result-object v16

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1710
    .end local v5    # "bootLogo":Landroid/widget/ImageView;
    .end local v8    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v15    # "view":Landroid/view/View;
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1711
    .local v9, "parseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->val$msg:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 1712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->val$msg:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "[^0-9]"

    const-string v18, ","

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, "arr$":[Ljava/lang/String;
    array-length v7, v4

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v12, v4, v6

    .line 1713
    .local v12, "sp":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_1

    .line 1714
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1712
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1718
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v12    # "sp":Ljava/lang/String;
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 1719
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1720
    .local v11, "progress":I
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1721
    .local v14, "total":I
    if-le v11, v14, :cond_3

    .line 1722
    move v13, v11

    .line 1723
    .local v13, "tmp":I
    move v11, v14

    .line 1724
    move v14, v13

    .line 1726
    .end local v13    # "tmp":I
    :cond_3
    const/16 v16, 0x3

    move/from16 v0, v16

    if-le v14, v0, :cond_5

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2700(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/widget/ProgressBar;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2700(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/widget/ProgressBar;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2700(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/widget/ProgressBar;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2900(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/widget/TextView;

    move-result-object v16

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2800(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_5

    .line 1732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2900(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/widget/TextView;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2800(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    mul-int v16, v16, v11

    div-int v10, v16, v14

    .line 1734
    .local v10, "pos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2800(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v10, v0, :cond_4

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2800(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v10, v16, -0x1

    .line 1737
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2900(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/widget/TextView;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2800(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v17

    aget-object v17, v17, v10

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1741
    .end local v10    # "pos":I
    .end local v11    # "progress":I
    .end local v14    # "total":I
    :cond_5
    return-void
.end method
