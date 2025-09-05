.class Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$1;
.super Ljava/lang/Object;
.source "CustomPreviewSeekBarPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->showDialog(Landroid/app/Activity;Landroid/widget/SeekBar;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;Landroid/widget/SeekBar;Landroid/app/Activity;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$1;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    iput-object p2, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$1;->val$seekBar:Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 156
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$1;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    iget-object p1, p1, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$302(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;Z)Z

    .line 157
    const-string p1, "NOT checked"

    .line 158
    iget-object v1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$1;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    iget-object v1, v1, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    invoke-static {v1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$200(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    const-string p1, "checked"

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$1;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    .line 162
    invoke-static {v1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->access$400(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "check_box_pref"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 164
    const-string v1, "skipMessage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 167
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$1;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    .line 168
    invoke-static {p1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->access$400(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "font_scale"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    .line 170
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$1;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    iget-object v0, v0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    iget-object v1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$1;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    .line 171
    invoke-virtual {v1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->getFontEntryValues()[Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mediatek/settings/accessibility/CustomToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result p1

    .line 170
    invoke-static {v0, p1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$502(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;I)I

    .line 172
    const-string p1, "CustomPreviewSeekBarPreferenceFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@M_onCancel mOldProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$1;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    iget-object v1, v1, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    invoke-static {v1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$500(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$1;->val$seekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$1;->this$1:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    iget-object v0, v0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    invoke-static {v0}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$500(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 175
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 176
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 177
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 178
    return-void
.end method
