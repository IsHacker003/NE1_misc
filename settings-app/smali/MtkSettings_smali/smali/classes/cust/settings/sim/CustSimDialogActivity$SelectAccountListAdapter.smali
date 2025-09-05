.class Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CustSimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcust/settings/sim/CustSimDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAccountListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mColorArr:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialogId:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mResId:I

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTintArr:[I

.field final synthetic this$0:Lcust/settings/sim/CustSimDialogActivity;


# direct methods
.method public constructor <init>(Lcust/settings/sim/CustSimDialogActivity;Ljava/util/List;Landroid/content/Context;I[Ljava/lang/String;[II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Landroid/content/Context;",
            "I[",
            "Ljava/lang/String;",
            "[II)V"
        }
    .end annotation

    .line 223
    iput-object p1, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->this$0:Lcust/settings/sim/CustSimDialogActivity;

    .line 224
    invoke-direct {p0, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 225
    iput-object p3, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    .line 226
    iput p4, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->mResId:I

    .line 227
    iput p7, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->mDialogId:I

    .line 228
    iput-object p2, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->mSubInfoList:Ljava/util/List;

    .line 229
    iput-object p5, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->mColorArr:[Ljava/lang/String;

    .line 230
    iput-object p6, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->mTintArr:[I

    .line 231
    invoke-static {}, Lcust/settings/sim/CustSimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "+++SelectAccountListAdapter+++ mColorArr = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->mColorArr:[Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 236
    iget-object p3, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 237
    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 241
    if-nez p2, :cond_0

    .line 243
    iget p2, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->mResId:I

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 245
    const p3, 0x7f0a038e    # @id/title

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Landroid/widget/TextView;

    .line 246
    const p3, 0x7f0a034a    # @id/summary

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Landroid/widget/TextView;

    .line 247
    const p3, 0x7f0a0196    # @id/icon

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Landroid/widget/ImageView;

    .line 248
    const p3, 0x7f0a029b    # @id/radio

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Landroid/widget/RadioButton;

    .line 249
    new-instance p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;

    move-object v0, p3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;-><init>(Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/RadioButton;)V

    .line 254
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 255
    goto :goto_0

    .line 256
    :cond_0
    nop

    .line 257
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;

    .line 259
    :goto_0
    iget-object v0, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->mTintArr:[I

    aget v1, v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 260
    iget-object v0, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->mTintArr:[I

    aget v1, v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 261
    iget-object v0, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->mTintArr:[I

    aget v1, v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 262
    iget-object v0, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->mTintArr:[I

    aget v1, v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 263
    invoke-static {}, Lcust/settings/sim/CustSimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++SelectAccountListAdapter getView +++ position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";; mColorArr[position] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->mColorArr:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-static {}, Lcust/settings/sim/CustSimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++SelectAccountListAdapter getView +++ mTintArr[position] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->mTintArr:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 266
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 267
    iget-object v1, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->mSubInfoList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 268
    if-eqz v1, :cond_3

    .line 271
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    .line 272
    nop

    .line 273
    iget-object v4, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->this$0:Lcust/settings/sim/CustSimDialogActivity;

    invoke-virtual {v4}, Lcust/settings/sim/CustSimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c68    # @string/sim_card_number_title 'SIM %1$d'

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    add-int/2addr v3, v6

    .line 274
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    .line 273
    invoke-virtual {v4, v5, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 275
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0xd

    if-nez v3, :cond_1

    .line 276
    iget-object v1, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->mColorArr:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 278
    iget-object v1, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget-object v1, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 281
    :cond_1
    invoke-static {}, Lcust/settings/sim/CustSimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v5, "cannot get slot index on getView"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v3, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v3, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    iget-object v3, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :goto_1
    iget-object v1, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f080219    # @drawable/zzz_ic_sim 'res/drawable-xxhdpi/zzz_ic_sim.png'

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 290
    invoke-static {}, Lcust/settings/sim/CustSimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---SelectAccountListAdapter getView --- mTintArr[position] = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->mTintArr:[I

    aget v5, v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v1, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 292
    iget-object v1, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->mTintArr:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 293
    iget-object v1, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    iget-object v1, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->mTintArr:[I

    aget v1, v1, p1

    iget-object v3, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->this$0:Lcust/settings/sim/CustSimDialogActivity;

    invoke-static {v3}, Lcust/settings/sim/CustSimDialogActivity;->access$100(Lcust/settings/sim/CustSimDialogActivity;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 298
    invoke-static {}, Lcust/settings/sim/CustSimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---SelectAccountListAdapter getView --- position = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v1, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 300
    iget-object v1, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 301
    iget-object v1, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 302
    iget-object v1, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 303
    iget-object v1, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_2

    .line 307
    :cond_2
    iget-object v1, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 308
    iget-object v1, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 309
    iget-object v1, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 310
    iget-object v1, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 311
    iget-object v1, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 313
    :goto_2
    iget-object v1, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->this$0:Lcust/settings/sim/CustSimDialogActivity;

    invoke-static {v1}, Lcust/settings/sim/CustSimDialogActivity;->access$200(Lcust/settings/sim/CustSimDialogActivity;)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->mTintArr:[I

    aget p1, v1, p1

    iget-object v1, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->this$0:Lcust/settings/sim/CustSimDialogActivity;

    invoke-static {v1}, Lcust/settings/sim/CustSimDialogActivity;->access$200(Lcust/settings/sim/CustSimDialogActivity;)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 314
    iget-object p1, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 315
    iget-object p1, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 316
    iget-object p1, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 317
    iget-object p1, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 318
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->this$0:Lcust/settings/sim/CustSimDialogActivity;

    iget-object v1, v1, Lcust/settings/sim/CustSimDialogActivity;->mAnotherSIM:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 321
    iget-object v1, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    iget-object v0, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    iget-object p3, p3, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    :cond_3
    return-object p2
.end method
