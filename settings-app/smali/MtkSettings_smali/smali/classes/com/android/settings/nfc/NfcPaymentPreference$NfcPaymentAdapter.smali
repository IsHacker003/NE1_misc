.class Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;
.super Landroid/widget/BaseAdapter;
.source "NfcPaymentPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcPaymentPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NfcPaymentAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

.field final synthetic this$0:Lcom/android/settings/nfc/NfcPaymentPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/nfc/NfcPaymentPreference;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->this$0:Lcom/android/settings/nfc/NfcPaymentPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 145
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->getItem(I)Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    aget-object p1, v0, p1

    .line 172
    if-nez p2, :cond_0

    .line 173
    iget-object p2, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->this$0:Lcom/android/settings/nfc/NfcPaymentPreference;

    invoke-static {p2}, Lcom/android/settings/nfc/NfcPaymentPreference;->access$000(Lcom/android/settings/nfc/NfcPaymentPreference;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00c4    # @layout/nfc_payment_option 'res/layout/nfc_payment_option.xml'

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 175
    new-instance p3, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;-><init>(Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;)V

    .line 176
    const v0, 0x7f0a0066    # @id/banner

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 177
    const v0, 0x7f0a008a    # @id/button

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p3, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    .line 178
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;

    .line 182
    :goto_0
    iget-object v0, p3, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    iget-object v0, p3, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 184
    iget-object v0, p3, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p3, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_ST_NFC_GSMA_SUPPORT:Z

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p3, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 193
    :cond_1
    iget-object v0, p3, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 194
    iget-object v0, p3, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    iget-boolean v1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 195
    iget-object v0, p3, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    iget-object v1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p3, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 197
    iget-object p3, p3, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {p3, p1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 198
    return-object p2
.end method

.method makeDefault(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V
    .locals 1

    .line 219
    iget-boolean v0, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->this$0:Lcom/android/settings/nfc/NfcPaymentPreference;

    invoke-static {v0}, Lcom/android/settings/nfc/NfcPaymentPreference;->access$100(Lcom/android/settings/nfc/NfcPaymentPreference;)Lcom/android/settings/nfc/PaymentBackend;

    move-result-object v0

    iget-object p1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Lcom/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    .line 222
    :cond_0
    iget-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->this$0:Lcom/android/settings/nfc/NfcPaymentPreference;

    invoke-virtual {p1}, Lcom/android/settings/nfc/NfcPaymentPreference;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    .line 223
    if-eqz p1, :cond_1

    .line 224
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 225
    :cond_1
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 208
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->makeDefault(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    .line 210
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->makeDefault(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    .line 216
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 231
    iget-object v0, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 232
    const-string v0, "NfcPaymentPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLongClick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gsma.services.nfc.SELECT_DEFAULT_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->this$0:Lcom/android/settings/nfc/NfcPaymentPreference;

    invoke-static {v1}, Lcom/android/settings/nfc/NfcPaymentPreference;->access$200(Lcom/android/settings/nfc/NfcPaymentPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 237
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 239
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 240
    iget-object v4, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 241
    iget-object p1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->this$0:Lcom/android/settings/nfc/NfcPaymentPreference;

    invoke-static {p1}, Lcom/android/settings/nfc/NfcPaymentPreference;->access$200(Lcom/android/settings/nfc/NfcPaymentPreference;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    goto :goto_1

    .line 244
    :catch_0
    move-exception p1

    .line 245
    const-string p1, "NfcPaymentPreference"

    const-string v0, "Activity not found."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    goto :goto_1

    .line 249
    :cond_0
    goto :goto_0

    .line 252
    :cond_1
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public updateApps([Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->notifyDataSetChanged()V

    .line 151
    return-void
.end method
