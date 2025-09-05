.class Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;
.super Ljava/lang/Object;
.source "AdvancedCallingOptions.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 7

    .line 155
    const p1, 0x7f0a0316    # @id/skip_box

    const v0, 0x7f0d014f    # @layout/skip_checkbox 'res/layout/skip_checkbox.xml'

    const/4 v1, 0x0

    const v2, 0x104000a    # @android:string/ok

    const v3, 0x7f120992    # @string/note 'Note'

    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 157
    :pswitch_0
    const-string p2, "OP12AdvancedCallingOptionsFragment"

    const-string v5, "Video Button checked"

    invoke-static {p2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {p2}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$400(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Z

    move-result p2

    const/4 v5, 0x1

    if-nez p2, :cond_0

    .line 159
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {p2}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$300(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 160
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 161
    iget-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {p2}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$300(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 162
    iget-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {p2}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$300(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f120898    # @string/lvc_disable 'Your Video Calling Service on your account was turned off.\n\nPlease contact customer care to have the ...'

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 163
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 164
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 165
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 166
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {p1}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$700(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 167
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {p1}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$800(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 168
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {p1}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$800(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 169
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {p1}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$800(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 170
    const-string p1, "OP12AdvancedCallingOptionsFragment"

    const-string p2, "LVC is disabled, so disable HD Voice and Video option"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    goto/16 :goto_0

    .line 172
    :cond_0
    iget-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {p2}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$700(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/widget/RadioButton;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/RadioButton;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 173
    const-string p2, "OP12AdvancedCallingOptionsFragment"

    const-string v6, "Show Video Button ON dialog"

    invoke-static {p2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {v6}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$300(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {p2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 175
    iget-object v6, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {v6}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$300(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 176
    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 178
    nop

    .line 179
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 180
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 181
    invoke-virtual {p2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 182
    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {v0}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$300(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 183
    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {v0}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$300(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1200c0    # @string/advance_calling_enable_msg 'When using the Verizon Wireless 4G LTE network, the voice portion of a video call will appear on you ...'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3$1;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3$1;-><init>(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;Landroid/widget/CheckBox;)V

    .line 185
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 201
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 202
    iget-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {p2}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$300(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "preff_advanced_calling"

    invoke-virtual {p2, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 204
    const-string v0, "skipMessage3"

    const-string v1, "NOT checked"

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 206
    const-string v0, "checked"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 207
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 209
    :cond_1
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {p1}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$900(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 210
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {p1}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$300(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/android/ims/ImsManager;->setVtSetting(Landroid/content/Context;Z)V

    .line 211
    const-string p1, "OP12AdvancedCallingOptionsFragment"

    const-string p2, "Set VT true"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_2
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {p1}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$300(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "KEY_CALL_OPTIONS"

    invoke-static {p1, p2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    goto/16 :goto_0

    .line 219
    :pswitch_1
    const-string p2, "OP12AdvancedCallingOptionsFragment"

    const-string v5, "Voice only button checked"

    invoke-static {p2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {p2}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$800(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/widget/RadioButton;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/RadioButton;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 221
    const-string p2, "OP12AdvancedCallingOptionsFragment"

    const-string v5, "Show Voice only Button ON dialog"

    invoke-static {p2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {v5}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$300(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {p2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    iget-object v5, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {v5}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$300(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 224
    invoke-virtual {v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 226
    nop

    .line 227
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 228
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 229
    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {v0}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$300(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 230
    invoke-virtual {p2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 231
    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {v0}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$300(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1205c1    # @string/enable_hd_voice_only_msg 'Your phone will not be able to make or receive video calls when you turn this setting on.'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3$2;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3$2;-><init>(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;Landroid/widget/CheckBox;)V

    .line 232
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 247
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 248
    iget-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {p2}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$300(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "preff_advanced_calling"

    invoke-virtual {p2, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 250
    const-string v0, "skipMessage4"

    const-string v1, "NOT checked"

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 251
    const-string v0, "checked"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 252
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 254
    :cond_3
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {p1}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$500(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {p1}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$400(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 255
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {p1}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$300(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "KEY_CALL_OPTIONS"

    invoke-static {p1, p2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 257
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {p1}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$300(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/android/ims/ImsManager;->setVtSetting(Landroid/content/Context;Z)V

    .line 258
    const-string p1, "OP12AdvancedCallingOptionsFragment"

    const-string p2, "Set VT false"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a017f
        :pswitch_1    # @id/hd_voice_only
        :pswitch_0    # @id/hd_voice_video
    .end packed-switch
.end method
