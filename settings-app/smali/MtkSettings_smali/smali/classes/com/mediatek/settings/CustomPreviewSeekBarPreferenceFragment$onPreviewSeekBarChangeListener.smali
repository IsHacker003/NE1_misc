.class Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;
.super Ljava/lang/Object;
.source "CustomPreviewSeekBarPreferenceFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "onPreviewSeekBarChangeListener"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mSeekByTouch:Z

.field final synthetic this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;


# direct methods
.method private constructor <init>(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    invoke-static {p1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$000(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->context:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$1;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;-><init>(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;)Landroid/content/Context;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    return p0
.end method

.method private showDialog(Landroid/app/Activity;Landroid/widget/SeekBar;I)V
    .locals 8

    .line 134
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->context:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->context:Landroid/content/Context;

    const-string v1, "check_box_pref"

    .line 137
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    const-string v1, "skipMessage"

    const-string v2, "NOT checked"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 139
    const-string v0, "CustomPreviewSeekBarPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@M_ShowDialog skip checkbox value from SharedPref is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    new-instance v1, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$202(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 141
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    invoke-static {v0}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$200(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->context:Landroid/content/Context;

    const v2, 0x7f120581    # @string/do_not_show 'Do not show again'

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 144
    iget-object v1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    invoke-static {v1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$200(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    const/high16 v2, 0x41980000    # 19.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v3, v0

    float-to-int v5, v3

    const/high16 v3, 0x41600000    # 14.0f

    mul-float/2addr v3, v0

    float-to-int v4, v3

    move-object v0, v6

    move v3, v5

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 146
    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->context:Landroid/content/Context;

    const v1, 0x7f1207d0    # @string/large_font_warning 'Very large font size will only applied in specific applications. Large font size will be applied in  ...'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->context:Landroid/content/Context;

    const v1, 0x7f120cb3    # @string/small_font_warning 'Minimum font size will only applied in specific applications. Small font size will be applied in all ...'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->context:Landroid/content/Context;

    const v1, 0x7f120f9d    # @string/warning_dialog_title 'Information'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 152
    new-instance v0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$1;-><init>(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;Landroid/widget/SeekBar;Landroid/app/Activity;)V

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 180
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->context:Landroid/content/Context;

    const v1, 0x7f120a31    # @string/positive_button_title 'OK'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$2;

    invoke-direct {v1, p0, p3}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$2;-><init>(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;I)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 210
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->context:Landroid/content/Context;

    const v1, 0x7f12092b    # @string/negative_button_title 'CANCEL'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$3;-><init>(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;Landroid/widget/SeekBar;Landroid/app/Activity;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 240
    const-string p1, "checked"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    invoke-static {p1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$500(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)I

    move-result p1

    if-eq p1, p3, :cond_1

    .line 241
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$702(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_1

    .line 243
    :cond_1
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$302(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;Z)Z

    .line 245
    :goto_1
    return-void
.end method


# virtual methods
.method public getFontEntryValues()[Ljava/lang/String;
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030047    # @array/custom_entryvalues_font_size

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->context:Landroid/content/Context;

    const-string v1, "check_box_pref"

    .line 108
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 109
    const-string v1, "skipMessage"

    const-string v2, "NOT checked"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v1, "CustomPreviewSeekBarPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@M_onProgressChanged progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "fromUser"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string p3, "NOT checked"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_1

    .line 112
    :cond_0
    iget-object p3, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    invoke-virtual {p3}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    .line 113
    invoke-direct {p0, p3, p1, p2}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->showDialog(Landroid/app/Activity;Landroid/widget/SeekBar;I)V

    .line 114
    goto :goto_0

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$100(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;IZ)V

    .line 116
    iget-boolean p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    if-nez p1, :cond_2

    .line 117
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    invoke-virtual {p1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->commit()V

    .line 120
    :cond_2
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 250
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    .line 251
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 255
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    invoke-static {p1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$800(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)Lcom/android/settings/PreviewPagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/PreviewPagerAdapter;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 256
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    invoke-static {p1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$800(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)Lcom/android/settings/PreviewPagerAdapter;

    move-result-object p1

    new-instance v0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$4;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$4;-><init>(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/PreviewPagerAdapter;->setAnimationEndAction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    invoke-virtual {p1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->commit()V

    .line 265
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    .line 266
    return-void
.end method
