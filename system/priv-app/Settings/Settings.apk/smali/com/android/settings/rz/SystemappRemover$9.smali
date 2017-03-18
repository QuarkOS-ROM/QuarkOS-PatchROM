.class Lcom/android/settings/rz/SystemappRemover$9;
.super Ljava/lang/Object;
.source "SystemappRemover.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/rz/SystemappRemover;->selectDialog(Ljava/util/ArrayList;Landroid/widget/ArrayAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/rz/SystemappRemover;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;

.field final synthetic val$sysAppProfile:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/settings/rz/SystemappRemover;Ljava/util/ArrayList;Landroid/widget/ArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/rz/SystemappRemover$9;->this$0:Lcom/android/settings/rz/SystemappRemover;

    iput-object p2, p0, Lcom/android/settings/rz/SystemappRemover$9;->val$sysAppProfile:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/settings/rz/SystemappRemover$9;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/rz/SystemappRemover$9;->this$0:Lcom/android/settings/rz/SystemappRemover;

    # invokes: Lcom/android/settings/rz/SystemappRemover;->sdAvailable()S
    invoke-static {v15}, Lcom/android/settings/rz/SystemappRemover;->access$300(Lcom/android/settings/rz/SystemappRemover;)S

    move-result v14

    new-instance v9, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/aicp"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/systemappremover.stf"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_5

    const/4 v15, 0x1

    if-lt v14, v15, :cond_4

    :try_start_0
    new-instance v15, Ljava/util/Scanner;

    const-string v16, "UTF-8"

    move-object/from16 v0, v16

    invoke-direct {v15, v13, v0}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v16, "\\A"

    invoke-virtual/range {v15 .. v16}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    const-string v15, ", "

    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v11, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/rz/SystemappRemover$9;->val$sysAppProfile:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v3, v15, -0x1

    :goto_2
    if-lez v3, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/rz/SystemappRemover$9;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v15, v5}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/rz/SystemappRemover$9;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v15}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    new-instance v15, Lcom/android/settings/rz/SystemappRemover$Deleter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/rz/SystemappRemover$9;->this$0:Lcom/android/settings/rz/SystemappRemover;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/android/settings/rz/SystemappRemover$Deleter;-><init>(Lcom/android/settings/rz/SystemappRemover;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/rz/SystemappRemover$Deleter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/rz/SystemappRemover$9;->this$0:Lcom/android/settings/rz/SystemappRemover;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/rz/SystemappRemover$9;->this$0:Lcom/android/settings/rz/SystemappRemover;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/rz/SystemappRemover;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f090dca      ## public string sizer_message_sdnoread

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/rz/SystemappRemover;->toast(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v15, 0x1

    move/from16 v0, p2

    if-ne v0, v15, :cond_1

    const/4 v15, 0x2

    if-ne v14, v15, :cond_9

    :try_start_2
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_6

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/rz/SystemappRemover$9;->val$sysAppProfile:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v15, "]["

    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v15, "["

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v15, "]"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    :cond_7
    new-instance v8, Ljava/io/FileWriter;

    invoke-direct {v8, v13}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    new-instance v12, Ljava/io/BufferedWriter;

    invoke-direct {v12, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v12, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/rz/SystemappRemover$9;->this$0:Lcom/android/settings/rz/SystemappRemover;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/rz/SystemappRemover$9;->this$0:Lcom/android/settings/rz/SystemappRemover;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/rz/SystemappRemover;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f090dcb      ## public string sizer_message_filesuccess

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/rz/SystemappRemover;->toast(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/rz/SystemappRemover$9;->this$0:Lcom/android/settings/rz/SystemappRemover;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/rz/SystemappRemover$9;->this$0:Lcom/android/settings/rz/SystemappRemover;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/rz/SystemappRemover;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f090dcc      ## public string sizer_message_filefail

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/rz/SystemappRemover;->toast(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/rz/SystemappRemover$9;->this$0:Lcom/android/settings/rz/SystemappRemover;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/rz/SystemappRemover$9;->this$0:Lcom/android/settings/rz/SystemappRemover;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/rz/SystemappRemover;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f090dc9      ## public string sizer_message_sdnowrite

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/rz/SystemappRemover;->toast(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
