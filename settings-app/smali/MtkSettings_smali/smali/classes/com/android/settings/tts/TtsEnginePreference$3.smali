.class Lcom/android/settings/tts/TtsEnginePreference$3;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tts/TtsEnginePreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TtsEnginePreference;

.field final synthetic val$buttonView:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    iput-object p2, p0, Lcom/android/settings/tts/TtsEnginePreference$3;->val$buttonView:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 151
    iget-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference$3;->val$buttonView:Landroid/widget/CompoundButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 152
    return-void
.end method
