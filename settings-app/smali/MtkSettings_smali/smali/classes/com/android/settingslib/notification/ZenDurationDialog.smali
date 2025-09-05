.class public Lcom/android/settingslib/notification/ZenDurationDialog;
.super Ljava/lang/Object;
.source "ZenDurationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;
    }
.end annotation


# static fields
.field protected static final ALWAYS_ASK_CONDITION_INDEX:I = 0x2

.field protected static final COUNTDOWN_CONDITION_INDEX:I = 0x1

.field private static final DEFAULT_BUCKET_INDEX:I

.field protected static final FOREVER_CONDITION_INDEX:I

.field protected static final MAX_BUCKET_MINUTES:I

.field private static final MINUTE_BUCKETS:[I

.field protected static final MIN_BUCKET_MINUTES:I


# instance fields
.field private MAX_MANUAL_DND_OPTIONS:I

.field protected mBucketIndex:I

.field protected mContext:Landroid/content/Context;

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field private mZenRadioGroup:Landroid/widget/RadioGroup;

.field protected mZenRadioGroupContent:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    sget-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    sput-object v0, Lcom/android/settingslib/notification/ZenDurationDialog;->MINUTE_BUCKETS:[I

    .line 47
    sget-object v0, Lcom/android/settingslib/notification/ZenDurationDialog;->MINUTE_BUCKETS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/android/settingslib/notification/ZenDurationDialog;->MIN_BUCKET_MINUTES:I

    .line 48
    sget-object v0, Lcom/android/settingslib/notification/ZenDurationDialog;->MINUTE_BUCKETS:[I

    sget-object v1, Lcom/android/settingslib/notification/ZenDurationDialog;->MINUTE_BUCKETS:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    sput v0, Lcom/android/settingslib/notification/ZenDurationDialog;->MAX_BUCKET_MINUTES:I

    .line 50
    sget-object v0, Lcom/android/settingslib/notification/ZenDurationDialog;->MINUTE_BUCKETS:[I

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    sput v0, Lcom/android/settingslib/notification/ZenDurationDialog;->DEFAULT_BUCKET_INDEX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mBucketIndex:I

    .line 60
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->MAX_MANUAL_DND_OPTIONS:I

    .line 65
    iput-object p1, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method private bindTag(ILandroid/view/View;I)V
    .locals 2

    .line 172
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;

    goto :goto_0

    .line 173
    :cond_0
    new-instance v0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;

    invoke-direct {v0}, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;-><init>()V

    .line 174
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 176
    iget-object v1, v0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    if-nez v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, v0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    .line 181
    :cond_1
    if-gtz p1, :cond_2

    .line 182
    sget-object p1, Lcom/android/settingslib/notification/ZenDurationDialog;->MINUTE_BUCKETS:[I

    sget v1, Lcom/android/settingslib/notification/ZenDurationDialog;->DEFAULT_BUCKET_INDEX:I

    aget p1, p1, v1

    iput p1, v0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->countdownZenDuration:I

    goto :goto_1

    .line 184
    :cond_2
    iput p1, v0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->countdownZenDuration:I

    .line 187
    :goto_1
    iget-object p1, v0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    new-instance v1, Lcom/android/settingslib/notification/ZenDurationDialog$2;

    invoke-direct {v1, p0, v0}, Lcom/android/settingslib/notification/ZenDurationDialog$2;-><init>(Lcom/android/settingslib/notification/ZenDurationDialog;Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;)V

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 196
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/settingslib/notification/ZenDurationDialog;->updateUi(Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;Landroid/view/View;I)V

    .line 197
    return-void
.end method

.method private setupUi(Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;Landroid/view/View;)V
    .locals 2

    .line 206
    iget-object v0, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->lines:Landroid/view/View;

    if-nez v0, :cond_0

    .line 207
    const v0, 0x1020002    # @android:id/content

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->lines:Landroid/view/View;

    .line 208
    iget-object v0, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->lines:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 211
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->line1:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 212
    const v0, 0x1020014    # @android:id/text1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->line1:Landroid/widget/TextView;

    .line 216
    :cond_1
    const v0, 0x1020015    # @android:id/text2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object p2, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->lines:Landroid/view/View;

    new-instance v0, Lcom/android/settingslib/notification/ZenDurationDialog$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/notification/ZenDurationDialog$3;-><init>(Lcom/android/settingslib/notification/ZenDurationDialog;Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    return-void
.end method

.method private updateButtons(Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;Landroid/view/View;I)V
    .locals 6

    .line 228
    const v0, 0x1020019    # @android:id/button1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 229
    new-instance v1, Lcom/android/settingslib/notification/ZenDurationDialog$4;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/settingslib/notification/ZenDurationDialog$4;-><init>(Lcom/android/settingslib/notification/ZenDurationDialog;Landroid/view/View;Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    const v1, 0x102001a    # @android:id/button2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 238
    new-instance v2, Lcom/android/settingslib/notification/ZenDurationDialog$5;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/android/settingslib/notification/ZenDurationDialog$5;-><init>(Lcom/android/settingslib/notification/ZenDurationDialog;Landroid/view/View;Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget p2, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->countdownZenDuration:I

    int-to-long v2, p2

    .line 246
    const/4 p2, 0x1

    if-ne p3, p2, :cond_4

    .line 247
    const/4 p3, 0x0

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    sget v4, Lcom/android/settingslib/notification/ZenDurationDialog;->MIN_BUCKET_MINUTES:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v2, p2

    goto :goto_0

    :cond_0
    move v2, p3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 251
    iget p1, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->countdownZenDuration:I

    sget v2, Lcom/android/settingslib/notification/ZenDurationDialog;->MAX_BUCKET_MINUTES:I

    if-eq p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move p2, p3

    :goto_1
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 253
    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    const/high16 p3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    move p1, p3

    goto :goto_2

    :cond_2
    move p1, p2

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 254
    invoke-virtual {v1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    move p2, p3

    nop

    :cond_3
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_3

    .line 256
    :cond_4
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    :goto_3
    return-void
.end method


# virtual methods
.method public createDialog()Landroid/app/Dialog;
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_duration"

    .line 69
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 73
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settingslib/R$string;->zen_mode_duration_settings_title:I

    .line 74
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settingslib/R$string;->cancel:I

    .line 75
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settingslib/R$string;->okay:I

    new-instance v3, Lcom/android/settingslib/notification/ZenDurationDialog$1;

    invoke-direct {v3, p0, v0}, Lcom/android/settingslib/notification/ZenDurationDialog$1;-><init>(Lcom/android/settingslib/notification/ZenDurationDialog;I)V

    .line 76
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 84
    invoke-virtual {p0}, Lcom/android/settingslib/notification/ZenDurationDialog;->getContentView()Landroid/view/View;

    move-result-object v2

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/settingslib/notification/ZenDurationDialog;->setupRadioButtons(I)V

    .line 86
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 87
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected getConditionTagAt(I)Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;

    return-object p1
.end method

.method protected getContentView()Landroid/view/View;
    .locals 6

    .line 128
    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/settingslib/R$layout;->zen_mode_duration_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 133
    sget v1, Lcom/android/settingslib/R$id;->zen_duration_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 135
    sget v2, Lcom/android/settingslib/R$id;->zen_radio_buttons:I

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    .line 136
    sget v2, Lcom/android/settingslib/R$id;->zen_radio_buttons_content:I

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    .line 138
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->MAX_MANUAL_DND_OPTIONS:I

    if-ge v2, v3, :cond_1

    .line 139
    iget-object v3, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/android/settingslib/R$layout;->zen_mode_radio_button:I

    iget-object v5, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 141
    iget-object v4, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 142
    invoke-virtual {v3, v2}, Landroid/view/View;->setId(I)V

    .line 144
    iget-object v3, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/android/settingslib/R$layout;->zen_mode_condition:I

    iget-object v5, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 146
    iget v4, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->MAX_MANUAL_DND_OPTIONS:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 147
    iget-object v4, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    :cond_1
    return-object v0
.end method

.method protected onClickTimeButton(Landroid/view/View;Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;ZI)V
    .locals 10

    .line 291
    nop

    .line 292
    sget-object v0, Lcom/android/settingslib/notification/ZenDurationDialog;->MINUTE_BUCKETS:[I

    array-length v0, v0

    .line 293
    iget v1, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mBucketIndex:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v1, v3, :cond_6

    .line 295
    iget v1, p2, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->countdownZenDuration:I

    int-to-long v5, v1

    .line 296
    :goto_0
    if-ge v2, v0, :cond_4

    .line 297
    if-eqz p3, :cond_0

    .line 298
    move v1, v2

    goto :goto_1

    .line 297
    :cond_0
    add-int/lit8 v1, v0, -0x1

    sub-int/2addr v1, v2

    .line 298
    :goto_1
    sget-object v7, Lcom/android/settingslib/notification/ZenDurationDialog;->MINUTE_BUCKETS:[I

    aget v7, v7, v1

    .line 299
    if-eqz p3, :cond_1

    int-to-long v8, v7

    cmp-long v8, v8, v5

    if-gtz v8, :cond_2

    :cond_1
    if-nez p3, :cond_3

    int-to-long v8, v7

    cmp-long v8, v8, v5

    if-gez v8, :cond_3

    .line 300
    :cond_2
    iput v1, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mBucketIndex:I

    .line 301
    nop

    .line 302
    goto :goto_2

    .line 296
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 305
    :cond_4
    move v7, v3

    :goto_2
    if-ne v7, v3, :cond_5

    .line 306
    sget p3, Lcom/android/settingslib/notification/ZenDurationDialog;->DEFAULT_BUCKET_INDEX:I

    iput p3, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mBucketIndex:I

    .line 307
    sget-object p3, Lcom/android/settingslib/notification/ZenDurationDialog;->MINUTE_BUCKETS:[I

    iget v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mBucketIndex:I

    aget v7, p3, v0

    .line 309
    :cond_5
    goto :goto_3

    .line 311
    :cond_6
    sub-int/2addr v0, v4

    iget v1, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mBucketIndex:I

    if-eqz p3, :cond_7

    move v3, v4

    nop

    :cond_7
    add-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mBucketIndex:I

    .line 312
    sget-object p3, Lcom/android/settingslib/notification/ZenDurationDialog;->MINUTE_BUCKETS:[I

    iget v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mBucketIndex:I

    aget v7, p3, v0

    .line 314
    :goto_3
    iput v7, p2, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->countdownZenDuration:I

    .line 315
    invoke-direct {p0, v7, p1, p4}, Lcom/android/settingslib/notification/ZenDurationDialog;->bindTag(ILandroid/view/View;I)V

    .line 316
    iget-object p1, p2, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {p1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 317
    return-void
.end method

.method protected setupRadioButtons(I)V
    .locals 5

    .line 155
    nop

    .line 156
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 157
    nop

    .line 162
    move v3, v0

    goto :goto_0

    .line 158
    :cond_0
    if-lez p1, :cond_1

    .line 159
    nop

    .line 162
    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, p1, v4, v0}, Lcom/android/settingslib/notification/ZenDurationDialog;->bindTag(ILandroid/view/View;I)V

    .line 164
    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0, v2}, Lcom/android/settingslib/notification/ZenDurationDialog;->bindTag(ILandroid/view/View;I)V

    .line 166
    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settingslib/notification/ZenDurationDialog;->bindTag(ILandroid/view/View;I)V

    .line 168
    invoke-virtual {p0, v3}, Lcom/android/settingslib/notification/ZenDurationDialog;->getConditionTagAt(I)Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;

    move-result-object p1

    iget-object p1, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 169
    return-void
.end method

.method protected updateUi(Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;Landroid/view/View;I)V
    .locals 2

    .line 263
    iget-object v0, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->lines:Landroid/view/View;

    if-nez v0, :cond_0

    .line 264
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/notification/ZenDurationDialog;->setupUi(Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;Landroid/view/View;)V

    .line 267
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/notification/ZenDurationDialog;->updateButtons(Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;Landroid/view/View;I)V

    .line 269
    const-string p2, ""

    .line 270
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 281
    :pswitch_0
    iget-object p2, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/settingslib/R$string;->zen_mode_duration_always_prompt_title:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 276
    :pswitch_1
    iget-object p2, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    iget p3, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->countdownZenDuration:I

    .line 277
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    .line 276
    invoke-static {p2, p3, v0, v1}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    move-result-object p2

    .line 278
    iget-object p2, p2, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    .line 279
    goto :goto_0

    .line 272
    :pswitch_2
    iget-object p2, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    const p3, 0x10411d2

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 274
    nop

    .line 286
    :goto_0
    iget-object p1, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->line1:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected updateZenDuration(I)V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 94
    iget-object v1, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zen_duration"

    .line 94
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 97
    packed-switch v0, :pswitch_data_0

    .line 120
    move v3, v1

    goto :goto_0

    .line 113
    :pswitch_0
    const/4 v3, -0x1

    .line 114
    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    const/16 v1, 0x540

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_0

    .line 105
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/android/settingslib/notification/ZenDurationDialog;->getConditionTagAt(I)Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;

    move-result-object v0

    .line 106
    iget v3, v0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->countdownZenDuration:I

    .line 107
    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    const/16 v1, 0x53e

    invoke-static {v0, v1, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 111
    goto :goto_0

    .line 99
    :pswitch_2
    nop

    .line 100
    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    const/16 v1, 0x53f

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 103
    nop

    .line 120
    :goto_0
    if-eq p1, v3, :cond_0

    .line 121
    iget-object p1, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "zen_duration"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
