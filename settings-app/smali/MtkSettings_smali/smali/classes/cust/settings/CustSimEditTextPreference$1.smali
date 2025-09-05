.class Lcust/settings/CustSimEditTextPreference$1;
.super Landroid/os/Handler;
.source "CustSimEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcust/settings/CustSimEditTextPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcust/settings/CustSimEditTextPreference;


# direct methods
.method constructor <init>(Lcust/settings/CustSimEditTextPreference;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcust/settings/CustSimEditTextPreference$1;->this$0:Lcust/settings/CustSimEditTextPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 165
    iget p1, p1, Landroid/os/Message;->what:I

    .line 166
    const-string v0, "CustSimEditTextPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v0, "CustSimEditTextPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage +++dialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcust/settings/CustSimEditTextPreference$1;->this$0:Lcust/settings/CustSimEditTextPreference;

    invoke-static {v2}, Lcust/settings/CustSimEditTextPreference;->access$100(Lcust/settings/CustSimEditTextPreference;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcust/settings/CustSimEditTextPreference$1;->this$0:Lcust/settings/CustSimEditTextPreference;

    invoke-static {v0}, Lcust/settings/CustSimEditTextPreference;->access$100(Lcust/settings/CustSimEditTextPreference;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcust/settings/CustSimEditTextPreference$1;->this$0:Lcust/settings/CustSimEditTextPreference;

    iget-object v1, p0, Lcust/settings/CustSimEditTextPreference$1;->this$0:Lcust/settings/CustSimEditTextPreference;

    invoke-virtual {v1}, Lcust/settings/CustSimEditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    invoke-static {v0, v1}, Lcust/settings/CustSimEditTextPreference;->access$102(Lcust/settings/CustSimEditTextPreference;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 171
    :cond_0
    const-string v0, "CustSimEditTextPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage ---dialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcust/settings/CustSimEditTextPreference$1;->this$0:Lcust/settings/CustSimEditTextPreference;

    invoke-static {v2}, Lcust/settings/CustSimEditTextPreference;->access$100(Lcust/settings/CustSimEditTextPreference;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcust/settings/CustSimEditTextPreference$1;->this$0:Lcust/settings/CustSimEditTextPreference;

    invoke-static {v0}, Lcust/settings/CustSimEditTextPreference;->access$100(Lcust/settings/CustSimEditTextPreference;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcust/settings/CustSimEditTextPreference$1;->this$0:Lcust/settings/CustSimEditTextPreference;

    invoke-static {v0}, Lcust/settings/CustSimEditTextPreference;->access$100(Lcust/settings/CustSimEditTextPreference;)Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f0a03a1    # @id/tv_dialog

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    if-ne p1, v2, :cond_1

    .line 177
    iget-object v1, p0, Lcust/settings/CustSimEditTextPreference$1;->this$0:Lcust/settings/CustSimEditTextPreference;

    invoke-static {v1}, Lcust/settings/CustSimEditTextPreference;->access$200(Lcust/settings/CustSimEditTextPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06009c    # @color/red '#f00'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v1, p0, Lcust/settings/CustSimEditTextPreference$1;->this$0:Lcust/settings/CustSimEditTextPreference;

    invoke-static {v1}, Lcust/settings/CustSimEditTextPreference;->access$200(Lcust/settings/CustSimEditTextPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060027    # @color/black '#000'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    :goto_0
    const-string v1, "CustSimEditTextPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage tv = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    goto :goto_1

    .line 184
    :cond_2
    const-string v0, "CustSimEditTextPreference"

    const-string v1, "handleMessage dialog still null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_1
    const-string v0, "CustSimEditTextPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage dialog.isShowing() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcust/settings/CustSimEditTextPreference$1;->this$0:Lcust/settings/CustSimEditTextPreference;

    invoke-static {v2}, Lcust/settings/CustSimEditTextPreference;->access$100(Lcust/settings/CustSimEditTextPreference;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcust/settings/CustSimEditTextPreference$1;->this$0:Lcust/settings/CustSimEditTextPreference;

    invoke-static {v0}, Lcust/settings/CustSimEditTextPreference;->access$100(Lcust/settings/CustSimEditTextPreference;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 190
    iget-object v0, p0, Lcust/settings/CustSimEditTextPreference$1;->this$0:Lcust/settings/CustSimEditTextPreference;

    invoke-static {v0}, Lcust/settings/CustSimEditTextPreference;->access$300(Lcust/settings/CustSimEditTextPreference;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 192
    :cond_3
    return-void
.end method
