.class public Lcom/android/settings/security/trustagent/TrustAgentManager;
.super Ljava/lang/Object;
.source "TrustAgentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;
    }
.end annotation


# static fields
.field static final PERMISSION_PROVIDE_AGENT:Ljava/lang/String; = "android.permission.PROVIDE_TRUST_AGENT"

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/security/trustagent/TrustAgentManager;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;
    .locals 8

    .line 151
    const/4 v0, 0x0

    if-eqz p2, :cond_c

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_c

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto/16 :goto_8

    .line 155
    :cond_0
    nop

    .line 156
    new-instance v1, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

    invoke-direct {v1}, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;-><init>()V

    .line 157
    nop

    .line 158
    nop

    .line 160
    :try_start_0
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v3, "android.service.trust.trustagent"

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 161
    if-nez v2, :cond_2

    .line 162
    :try_start_1
    const-string p1, "TrustAgentManager"

    const-string v3, "Can\'t find android.service.trust.trustagent meta-data"

    invoke-static {p1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    nop

    .line 191
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 163
    :cond_1
    return-object v0

    .line 191
    :catchall_0
    move-exception p1

    goto/16 :goto_1

    .line 188
    :catch_0
    move-exception p1

    move-object v3, v0

    goto/16 :goto_2

    .line 186
    :catch_1
    move-exception p1

    move-object v3, v0

    goto/16 :goto_4

    .line 184
    :catch_2
    move-exception p1

    move-object v3, v0

    goto/16 :goto_5

    .line 165
    :cond_2
    :try_start_2
    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p1

    .line 166
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 168
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v4, v6, :cond_3

    if-eq v4, v5, :cond_3

    goto :goto_0

    .line 171
    :cond_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 172
    const-string v7, "trust-agent"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 173
    const-string p1, "TrustAgentManager"

    const-string v3, "Meta-data does not start with trust-agent tag"

    invoke-static {p1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    nop

    .line 191
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 174
    :cond_4
    return-object v0

    .line 176
    :cond_5
    :try_start_3
    sget-object v4, Lcom/android/internal/R$styleable;->TrustAgent:[I

    .line 177
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 178
    nop

    .line 179
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    .line 180
    const/4 v3, 0x0

    .line 181
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->title:Ljava/lang/String;

    .line 182
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    :try_start_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 191
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 193
    :cond_6
    move-object p1, v0

    goto :goto_6

    .line 188
    :catch_3
    move-exception p1

    goto :goto_2

    .line 186
    :catch_4
    move-exception p1

    goto :goto_4

    .line 184
    :catch_5
    move-exception p1

    goto :goto_5

    .line 191
    :catchall_1
    move-exception p1

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    throw p1

    .line 188
    :catch_6
    move-exception p1

    move-object v2, v0

    move-object v3, v2

    .line 189
    :goto_2
    nop

    .line 191
    if-eqz v2, :cond_8

    :goto_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_6

    .line 186
    :catch_7
    move-exception p1

    move-object v2, v0

    move-object v3, v2

    .line 187
    :goto_4
    nop

    .line 191
    if-eqz v2, :cond_8

    goto :goto_3

    .line 184
    :catch_8
    move-exception p1

    move-object v2, v0

    move-object v3, v2

    .line 185
    :goto_5
    nop

    .line 191
    if-eqz v2, :cond_8

    goto :goto_3

    .line 193
    :cond_8
    :goto_6
    if-eqz p1, :cond_9

    .line 194
    const-string v1, "TrustAgentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    return-object v0

    .line 197
    :cond_9
    if-eqz v3, :cond_a

    const/16 p1, 0x2f

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_a

    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 200
    :cond_a
    nop

    .line 201
    if-nez v3, :cond_b

    goto :goto_7

    :cond_b
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :goto_7
    iput-object v0, v1, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    .line 202
    return-object v1

    .line 153
    :cond_c
    :goto_8
    return-object v0
.end method


# virtual methods
.method public getActiveTrustAgentLabel(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/lang/CharSequence;
    .locals 0

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;

    move-result-object p1

    .line 96
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

    iget-object p1, p1, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->title:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    .line 107
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 108
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 112
    sget-object v4, Lcom/android/settings/security/trustagent/TrustAgentManager;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 114
    invoke-virtual {p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object p2

    .line 115
    nop

    .line 116
    const/16 v5, 0x10

    invoke-static {p1, v5, v0}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    .line 119
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 120
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 121
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_0

    invoke-virtual {p0, v4, v2}, Lcom/android/settings/security/trustagent/TrustAgentManager;->shouldProvideTrust(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 122
    goto :goto_0

    .line 124
    :cond_1
    nop

    .line 125
    invoke-direct {p0, v2, v4}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

    move-result-object v5

    .line 126
    iget-object v6, v5, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    .line 127
    invoke-virtual {p0, v4}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->title:Ljava/lang/String;

    .line 128
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 129
    goto :goto_0

    .line 131
    :cond_2
    if-eqz p1, :cond_3

    const/4 p2, 0x0

    .line 132
    invoke-virtual {p0, v4}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v0

    .line 131
    invoke-virtual {v1, p2, v0}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_3

    .line 133
    iput-object p1, v5, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 135
    :cond_3
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    nop

    .line 141
    :cond_4
    return-object v3
.end method

.method public getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 2

    .line 145
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 145
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public shouldProvideTrust(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z
    .locals 2

    .line 81
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 82
    const-string v0, "android.permission.PROVIDE_TRUST_AGENT"

    invoke-virtual {p2, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_0

    .line 84
    const-string p2, "TrustAgentManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping agent because package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not have permission "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "android.permission.PROVIDE_TRUST_AGENT"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 p1, 0x0

    return p1

    .line 88
    :cond_0
    const/4 p1, 0x1

    return p1
.end method
