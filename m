Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6O+iFptNzmmjmgYAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 02 Apr 2026 13:06:03 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 881C1388153
	for <lists+openipmi-developer@lfdr.de>; Thu, 02 Apr 2026 13:06:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Mime-Version:Message-Id:Date:In-Reply-To:To:
	References:Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dKxHem/FrPspxEzne+T0wRjMNaQo3gHwnnyKkWR5MHI=; b=fdoxO7m4eIAIFdG5Wt7V+50i64
	ogpG2JBh+xcXkkvBu0iC+X1uHowlrt3JC4+6samgEldPQnuqPUHVFYwgShP6QZcagcC37NsugA5Co
	c9NY7UkbpmJ0bI0srBhh8u2t7a3XhH9KsF+cSVrzt9Ql7DozxLjoUK5ImIH10hXB/AAY=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1w8Fs4-0006xj-2x;
	Thu, 02 Apr 2026 11:05:56 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangjian.3032@bytedance.com>) id 1w8Fs2-0006xZ-CE
 for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Apr 2026 11:05:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:Mime-Version
 :Message-Id:Date:In-Reply-To:From:To:References:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dQ0foXP8gORxT8e5z0O/x1w5uKk5ufdTrOKM95eePME=; b=HzsrC3DXXh8QJOtcanzEhAf9z+
 d3RwFwixZFSE5Uz4YamuWPuXtJIoj2evrZjKmh+pNdiTb4ImKiOa03GKJZOTiQyf9DYY4H8np+DCe
 6tQh5UVRzHNvBhya3TFu7+QUCJPpOn+Q16TADKwe4i9LmShB8Mqu8/iT7nIYh9i4c8Ho=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:Mime-Version:Message-Id:Date:
 In-Reply-To:From:To:References:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dQ0foXP8gORxT8e5z0O/x1w5uKk5ufdTrOKM95eePME=; b=NUPNfaIeAbc2CSPbZ7rtgOLs9F
 bzyOP4xHiUeAljNcaufZSqSk4bt4ZqxdYkS/Jr9A8Ll8adh2qMJjzDvqqVLNVIx6QmIDAJyhQ8+P7
 mylYfbbu0Lczuwb5n0URhNPTj32nGK9IG4sPhCP9DrDq62qpaH/qtvmBXscFO3DIfUvg=;
Received: from va-1-113.ptr.blmpb.com ([209.127.230.113])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1w8Fs1-0001u9-2q for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Apr 2026 11:05:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=2212171451; d=bytedance.com; t=1775127938; h=from:subject:
 mime-version:from:date:message-id:subject:to:cc:reply-to:content-type:
 mime-version:in-reply-to:message-id;
 bh=dQ0foXP8gORxT8e5z0O/x1w5uKk5ufdTrOKM95eePME=;
 b=VMenmPpm71hrZRwQbqzFdRMbXV3rcd17LG0V3e9W9knh/gMdxjn7sR9h8QNOcmQ1Ujyzeu
 2C/GtzUH96JJoclysY7Tp6Z/4fIyzUWlymwsi346W2T3KuxCuahvzWE5wFgi28UEd51Tgq
 LtI3eRmRS3LYufoZt6SMFqyyAq7UVLm2VkFxGkTLxJ8qU1h7koVUro/2fqr5T8kXIRqMo5
 /KHM/8jrjDlxxVS1c2Hpf7u+RgVwmbune1118H41jx3CkA7BjAg+LUCzzHqv8dsJQr6Qr2
 PsKcic5KXiQ86CfK+hcs0Qlt8jfpc1PXxe+QXyZ0PGosyefSpMFnLgOhlI1t5w==
References: <20260402110435.3589408-1-zhangjian.3032@bytedance.com>
X-Original-From: Jian Zhang <zhangjian.3032@bytedance.com>
To: "Corey Minyard" <corey@minyard.net>, 
 "Quan Nguyen" <quan@os.amperecomputing.com>, 
 <openipmi-developer@lists.sourceforge.net>, <linux-kernel@vger.kernel.org>
In-Reply-To: <20260402110435.3589408-1-zhangjian.3032@bytedance.com>
X-Mailer: git-send-email 2.20.1
Date: Thu,  2 Apr 2026 19:04:35 +0800
Message-Id: <20260402110435.3589408-5-zhangjian.3032@bytedance.com>
Mime-Version: 1.0
X-Lms-Return-Path: <lba+269ce4d80+4e938a+lists.sourceforge.net+zhangjian.3032@bytedance.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Add some unit test for state machine when in SSIF_ABORTING
 state. Signed-off-by: Jian Zhang <zhangjian.3032@bytedance.com> ---
 drivers/char/ipmi/Kconfig
 | 10 + drivers/char/ipmi/ssif_bmc.c | 405 +++++++++++++++++++++++++++++++++++
 2 files changed, 415 insertions(+) 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1w8Fs1-0001u9-2q
Subject: [Openipmi-developer] [PATCH 5/5] ipmi: ssif_bmc: add unit test for
 state machine
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
From: Jian Zhang via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Jian Zhang <zhangjian.3032@bytedance.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-8.11 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:quan@os.amperecomputing.com,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,bytedance.com:-];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,bytedance.com:s=2212171451];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[zhangjian.3032@bytedance.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:dkim,bytedance.com:email,bytedance.com:replyto,bytedance.com:mid,amperecomputing.com:email]
X-Rspamd-Queue-Id: 881C1388153
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add some unit test for state machine when in SSIF_ABORTING state.

Signed-off-by: Jian Zhang <zhangjian.3032@bytedance.com>
---
 drivers/char/ipmi/Kconfig    |  10 +
 drivers/char/ipmi/ssif_bmc.c | 405 +++++++++++++++++++++++++++++++++++
 2 files changed, 415 insertions(+)

diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
index 92bed266d07c..709820f80266 100644
--- a/drivers/char/ipmi/Kconfig
+++ b/drivers/char/ipmi/Kconfig
@@ -187,6 +187,16 @@ config SSIF_IPMI_BMC
 	  The driver implements the BMC side of the SMBus system
 	  interface (SSIF).
 
+config SSIF_IPMI_BMC_KUNIT_TEST
+	bool "KUnit tests for SSIF IPMI BMC driver" if !KUNIT_ALL_TESTS
+	depends on KUNIT=y
+	depends on SSIF_IPMI_BMC=y
+	default KUNIT_ALL_TESTS
+	help
+	  This option builds unit tests that exercise the SSIF BMC state
+	  machine, including request handling, response transmission,
+	  and error paths such as aborted or truncated transfers.
+
 config IPMB_DEVICE_INTERFACE
 	tristate 'IPMB Interface handler'
 	depends on I2C
diff --git a/drivers/char/ipmi/ssif_bmc.c b/drivers/char/ipmi/ssif_bmc.c
index 691e95a67f94..69266c109cb9 100644
--- a/drivers/char/ipmi/ssif_bmc.c
+++ b/drivers/char/ipmi/ssif_bmc.c
@@ -18,6 +18,9 @@
 #include <linux/timer.h>
 #include <linux/jiffies.h>
 #include <linux/ipmi_ssif_bmc.h>
+#if IS_ENABLED(CONFIG_SSIF_IPMI_BMC_KUNIT_TEST)
+#include <kunit/test.h>
+#endif
 
 #define DEVICE_NAME                             "ipmi-ssif-host"
 
@@ -886,6 +889,408 @@ static struct i2c_driver ssif_bmc_driver = {
 	.id_table       = ssif_bmc_id,
 };
 
+#if IS_ENABLED(CONFIG_SSIF_IPMI_BMC_KUNIT_TEST)
+struct ssif_bmc_test_ctx {
+	struct ssif_bmc_ctx ssif_bmc;
+	struct i2c_client client;
+	struct i2c_adapter adapter;
+	struct i2c_algorithm algo;
+};
+
+static int ssif_bmc_test_init(struct kunit *test)
+{
+	struct ssif_bmc_test_ctx *test_ctx;
+
+	test_ctx = kunit_kzalloc(test, sizeof(*test_ctx), GFP_KERNEL);
+	if (!test_ctx)
+		return -ENOMEM;
+
+	test_ctx->adapter.algo = &test_ctx->algo;
+	test_ctx->client.addr = 0x20;
+	test_ctx->client.adapter = &test_ctx->adapter;
+
+	spin_lock_init(&test_ctx->ssif_bmc.lock);
+	init_waitqueue_head(&test_ctx->ssif_bmc.wait_queue);
+	test_ctx->ssif_bmc.client = &test_ctx->client;
+	i2c_set_clientdata(&test_ctx->client, &test_ctx->ssif_bmc);
+
+	test->priv = test_ctx;
+
+	return 0;
+}
+
+static void ssif_bmc_test_exit(struct kunit *test)
+{
+	struct ssif_bmc_test_ctx *test_ctx = test->priv;
+
+	if (test_ctx->ssif_bmc.response_timer_inited)
+		del_timer_sync(&test_ctx->ssif_bmc.response_timer);
+}
+
+static int ssif_bmc_test_run_event_val(struct ssif_bmc_test_ctx *test_ctx,
+					       enum i2c_slave_event event,
+					       u8 *value)
+{
+	return ssif_bmc_cb(&test_ctx->client, event, value);
+}
+
+static int ssif_bmc_test_run_event(struct ssif_bmc_test_ctx *test_ctx,
+					   enum i2c_slave_event event, u8 value)
+{
+	return ssif_bmc_test_run_event_val(test_ctx, event, &value);
+}
+
+static void ssif_bmc_test_singlepart_req(struct kunit *test)
+{
+	struct ssif_bmc_test_ctx *test_ctx = test->priv;
+	struct ssif_bmc_ctx *ssif_bmc = &test_ctx->ssif_bmc;
+
+	ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_REQUESTED,
+				GET_8BIT_ADDR(test_ctx->client.addr));
+	ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED,
+				SSIF_IPMI_SINGLEPART_WRITE);
+	ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 2);
+
+	ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 0xaa);
+
+	ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 0x55);
+	KUNIT_EXPECT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_STOP, 0), -EBUSY);
+
+	KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_READY);
+	KUNIT_EXPECT_TRUE(test, ssif_bmc->request_available);
+	KUNIT_EXPECT_TRUE(test, ssif_bmc->busy);
+	KUNIT_EXPECT_FALSE(test, ssif_bmc->aborting);
+	KUNIT_EXPECT_EQ(test, ssif_bmc->request.len, 2);
+	KUNIT_EXPECT_EQ(test, ssif_bmc->request.payload[0], 0xaa);
+	KUNIT_EXPECT_EQ(test, ssif_bmc->request.payload[1], 0x55);
+	KUNIT_EXPECT_TRUE(test, ssif_bmc->response_timer_inited);
+}
+
+static void ssif_bmc_test_restart_write_without_stop(struct kunit *test)
+{
+	struct ssif_bmc_test_ctx *test_ctx = test->priv;
+	struct ssif_bmc_ctx *ssif_bmc = &test_ctx->ssif_bmc;
+
+	KUNIT_ASSERT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_REQUESTED,
+						GET_8BIT_ADDR(test_ctx->client.addr)), 0);
+	KUNIT_ASSERT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED,
+						SSIF_IPMI_SINGLEPART_WRITE), 0);
+	KUNIT_ASSERT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 2), 0);
+	KUNIT_ASSERT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 0xde), 0);
+
+	KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_REQ_RECVING);
+
+	/* Write transaction, without stop, and new request coming */
+	ssif_bmc_test_singlepart_req(test);
+}
+
+
+static void ssif_bmc_test_restart_after_invalid_command(struct kunit *test)
+{
+	struct ssif_bmc_test_ctx *test_ctx = test->priv;
+	struct ssif_bmc_ctx *ssif_bmc = &test_ctx->ssif_bmc;
+
+	KUNIT_ASSERT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_REQUESTED,
+						GET_8BIT_ADDR(test_ctx->client.addr)), 0);
+	KUNIT_ASSERT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 0xff), 0);
+	KUNIT_ASSERT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 1), 0);
+
+	KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_ABORTING);
+	KUNIT_EXPECT_TRUE(test, ssif_bmc->aborting);
+
+	/* After An Invalid Command, expect could handle new request */
+	ssif_bmc_test_singlepart_req(test);
+}
+
+static void ssif_bmc_test_restart_after_invalid_length(struct kunit *test)
+{
+	struct ssif_bmc_test_ctx *test_ctx = test->priv;
+	struct ssif_bmc_ctx *ssif_bmc = &test_ctx->ssif_bmc;
+	int i;
+
+	KUNIT_ASSERT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_REQUESTED,
+						GET_8BIT_ADDR(test_ctx->client.addr)), 0);
+	KUNIT_ASSERT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED,
+						SSIF_IPMI_SINGLEPART_WRITE), 0);
+	KUNIT_ASSERT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED,
+						MAX_PAYLOAD_PER_TRANSACTION + 1), 0);
+
+	for (i = 0; i < MAX_PAYLOAD_PER_TRANSACTION + 1; i++)
+		KUNIT_ASSERT_EQ(test,
+				ssif_bmc_test_run_event(test_ctx,
+							I2C_SLAVE_WRITE_RECEIVED, i), 0);
+
+	KUNIT_EXPECT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_STOP, 0), 0);
+	KUNIT_EXPECT_TRUE(test, ssif_bmc->aborting);
+	KUNIT_EXPECT_FALSE(test, ssif_bmc->request_available);
+	KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_REQ_RECVING);
+
+	ssif_bmc_test_singlepart_req(test);
+}
+
+static void ssif_bmc_test_singlepart_read_response_completion(struct kunit *test)
+{
+	struct ssif_bmc_test_ctx *test_ctx = test->priv;
+	struct ssif_bmc_ctx *ssif_bmc = &test_ctx->ssif_bmc;
+	u8 value;
+
+	ssif_bmc->state = SSIF_SMBUS_CMD;
+	ssif_bmc->part_buf.smbus_cmd = SSIF_IPMI_SINGLEPART_READ;
+	ssif_bmc->response.len = 2;
+	ssif_bmc->response.payload[0] = 0x11;
+	ssif_bmc->response.payload[1] = 0x22;
+	ssif_bmc->response_in_progress = true;
+	ssif_bmc->is_singlepart_read = true;
+	ssif_bmc->pec_support = true;
+
+	value = 0;
+	KUNIT_ASSERT_EQ(test,
+			ssif_bmc_test_run_event_val(test_ctx, I2C_SLAVE_READ_REQUESTED,
+						    &value), 0);
+	KUNIT_EXPECT_EQ(test, value, 2);
+	KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_RES_SENDING);
+	KUNIT_EXPECT_TRUE(test, ssif_bmc->response_in_send);
+
+	value = 0;
+	KUNIT_EXPECT_EQ(test,
+			ssif_bmc_test_run_event_val(test_ctx, I2C_SLAVE_READ_PROCESSED,
+						    &value), 0);
+	KUNIT_EXPECT_EQ(test, value, 0x11);
+
+	value = 0;
+	KUNIT_EXPECT_EQ(test,
+			ssif_bmc_test_run_event_val(test_ctx, I2C_SLAVE_READ_PROCESSED,
+						    &value), 0);
+	KUNIT_EXPECT_EQ(test, value, 0x22);
+
+	value = 0;
+	KUNIT_EXPECT_EQ(test,
+			ssif_bmc_test_run_event_val(test_ctx, I2C_SLAVE_READ_PROCESSED,
+						    &value), 0);
+	KUNIT_EXPECT_EQ(test, value, ssif_bmc->part_buf.pec);
+
+	KUNIT_EXPECT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_STOP, 0), 0);
+	KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_READY);
+	KUNIT_EXPECT_FALSE(test, ssif_bmc->response_in_progress);
+	KUNIT_EXPECT_FALSE(test, ssif_bmc->response_in_send);
+	KUNIT_EXPECT_EQ(test, ssif_bmc->response.len, 0);
+}
+
+static void ssif_bmc_test_stop_during_start_discards_partial_request(struct kunit *test)
+{
+	struct ssif_bmc_test_ctx *test_ctx = test->priv;
+	struct ssif_bmc_ctx *ssif_bmc = &test_ctx->ssif_bmc;
+
+	KUNIT_ASSERT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_REQUESTED,
+						GET_8BIT_ADDR(test_ctx->client.addr)), 0);
+	KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_START);
+
+	KUNIT_EXPECT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_STOP, 0), 0);
+	KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_READY);
+	KUNIT_EXPECT_FALSE(test, ssif_bmc->request_available);
+	KUNIT_EXPECT_EQ(test, ssif_bmc->msg_idx, 0);
+
+	KUNIT_EXPECT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_REQUESTED,
+						GET_8BIT_ADDR(test_ctx->client.addr)), 0);
+	KUNIT_EXPECT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED,
+						SSIF_IPMI_SINGLEPART_WRITE), 0);
+	KUNIT_EXPECT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 1), 0);
+	KUNIT_EXPECT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 0x77), 0);
+	KUNIT_EXPECT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_STOP, 0), -EBUSY);
+
+	KUNIT_EXPECT_TRUE(test, ssif_bmc->request_available);
+	KUNIT_EXPECT_EQ(test, ssif_bmc->request.len, 1);
+	KUNIT_EXPECT_EQ(test, ssif_bmc->request.payload[0], 0x77);
+}
+
+static void ssif_bmc_test_read_interrupts_partial_write(struct kunit *test)
+{
+	struct ssif_bmc_test_ctx *test_ctx = test->priv;
+	struct ssif_bmc_ctx *ssif_bmc = &test_ctx->ssif_bmc;
+	u8 value = 0xff;
+
+	KUNIT_ASSERT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_REQUESTED,
+						GET_8BIT_ADDR(test_ctx->client.addr)), 0);
+	KUNIT_ASSERT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED,
+						SSIF_IPMI_SINGLEPART_WRITE), 0);
+	KUNIT_ASSERT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 2), 0);
+	KUNIT_ASSERT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 0xab), 0);
+
+	KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_REQ_RECVING);
+	KUNIT_EXPECT_EQ(test,
+			ssif_bmc_test_run_event_val(test_ctx, I2C_SLAVE_READ_REQUESTED,
+						    &value), 0);
+	KUNIT_EXPECT_EQ(test, value, 0);
+	KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_ABORTING);
+
+	KUNIT_EXPECT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_STOP, 0), 0);
+	KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_READY);
+	KUNIT_EXPECT_FALSE(test, ssif_bmc->request_available);
+	KUNIT_EXPECT_EQ(test, ssif_bmc->request.len, 0);
+
+	KUNIT_EXPECT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_REQUESTED,
+						GET_8BIT_ADDR(test_ctx->client.addr)), 0);
+	KUNIT_EXPECT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED,
+						SSIF_IPMI_SINGLEPART_WRITE), 0);
+	KUNIT_EXPECT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 1), 0);
+	KUNIT_EXPECT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 0xcd), 0);
+	KUNIT_EXPECT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_STOP, 0), -EBUSY);
+
+	KUNIT_EXPECT_TRUE(test, ssif_bmc->request_available);
+	KUNIT_EXPECT_EQ(test, ssif_bmc->request.len, 1);
+	KUNIT_EXPECT_EQ(test, ssif_bmc->request.payload[0], 0xcd);
+}
+
+static void ssif_bmc_test_write_interrupts_response_send(struct kunit *test)
+{
+	struct ssif_bmc_test_ctx *test_ctx = test->priv;
+	struct ssif_bmc_ctx *ssif_bmc = &test_ctx->ssif_bmc;
+	u8 value = 0;
+
+	ssif_bmc->state = SSIF_SMBUS_CMD;
+	ssif_bmc->part_buf.smbus_cmd = SSIF_IPMI_SINGLEPART_READ;
+	ssif_bmc->response.len = 1;
+	ssif_bmc->response.payload[0] = 0x66;
+	ssif_bmc->response_in_progress = true;
+	ssif_bmc->is_singlepart_read = true;
+
+	KUNIT_ASSERT_EQ(test,
+			ssif_bmc_test_run_event_val(test_ctx, I2C_SLAVE_READ_REQUESTED,
+						    &value), 0);
+	KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_RES_SENDING);
+	KUNIT_EXPECT_TRUE(test, ssif_bmc->response_in_send);
+
+	/* READ_REQUESTED transaction */
+	ssif_bmc_test_singlepart_req(test);
+}
+
+static void ssif_bmc_test_write_interrupts_response_sending(struct kunit *test)
+{
+	struct ssif_bmc_test_ctx *test_ctx = test->priv;
+	struct ssif_bmc_ctx *ssif_bmc = &test_ctx->ssif_bmc;
+	u8 value = 0;
+
+	ssif_bmc->state = SSIF_SMBUS_CMD;
+	ssif_bmc->part_buf.smbus_cmd = SSIF_IPMI_SINGLEPART_READ;
+	ssif_bmc->response.len = 1;
+	ssif_bmc->response.payload[0] = 0x66;
+	ssif_bmc->response_in_progress = true;
+	ssif_bmc->is_singlepart_read = true;
+
+	KUNIT_ASSERT_EQ(test,
+			ssif_bmc_test_run_event_val(test_ctx, I2C_SLAVE_READ_REQUESTED,
+						    &value), 0);
+	KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_RES_SENDING);
+	KUNIT_EXPECT_TRUE(test, ssif_bmc->response_in_send);
+
+	KUNIT_ASSERT_EQ(test,
+			ssif_bmc_test_run_event_val(test_ctx, I2C_SLAVE_READ_PROCESSED,
+						    &value), 0);
+	KUNIT_EXPECT_EQ(test, value, 0x66);
+
+	/* READ_REQUESTED transaction */
+	ssif_bmc_test_singlepart_req(test);
+}
+
+static void ssif_bmc_test_timeout_interrupt_allows_retry(struct kunit *test)
+{
+	struct ssif_bmc_test_ctx *test_ctx = test->priv;
+	struct ssif_bmc_ctx *ssif_bmc = &test_ctx->ssif_bmc;
+
+	KUNIT_ASSERT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_REQUESTED,
+						GET_8BIT_ADDR(test_ctx->client.addr)), 0);
+	KUNIT_ASSERT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED,
+						SSIF_IPMI_SINGLEPART_WRITE), 0);
+	KUNIT_ASSERT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 1), 0);
+	KUNIT_ASSERT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 0x21), 0);
+	KUNIT_ASSERT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_STOP, 0), -EBUSY);
+
+	KUNIT_ASSERT_TRUE(test, timer_pending(&ssif_bmc->response_timer));
+	del_timer_sync(&ssif_bmc->response_timer);
+	response_timeout(&ssif_bmc->response_timer);
+
+	KUNIT_EXPECT_FALSE(test, ssif_bmc->busy);
+	KUNIT_EXPECT_TRUE(test, ssif_bmc->aborting);
+	KUNIT_EXPECT_FALSE(test, ssif_bmc->response_timer_inited);
+
+	KUNIT_EXPECT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_REQUESTED,
+						GET_8BIT_ADDR(test_ctx->client.addr)), 0);
+	KUNIT_EXPECT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED,
+						SSIF_IPMI_SINGLEPART_WRITE), 0);
+	KUNIT_EXPECT_FALSE(test, ssif_bmc->aborting);
+	KUNIT_EXPECT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 1), 0);
+	KUNIT_EXPECT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 0x22), 0);
+	KUNIT_EXPECT_EQ(test,
+			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_STOP, 0), -EBUSY);
+
+	KUNIT_EXPECT_TRUE(test, ssif_bmc->request_available);
+	KUNIT_EXPECT_EQ(test, ssif_bmc->request.len, 1);
+	KUNIT_EXPECT_EQ(test, ssif_bmc->request.payload[0], 0x22);
+}
+
+static struct kunit_case ssif_bmc_test_cases[] = {
+	KUNIT_CASE(ssif_bmc_test_singlepart_req),
+	KUNIT_CASE(ssif_bmc_test_restart_write_without_stop),
+	KUNIT_CASE(ssif_bmc_test_restart_after_invalid_command),
+	KUNIT_CASE(ssif_bmc_test_restart_after_invalid_length),
+	KUNIT_CASE(ssif_bmc_test_singlepart_read_response_completion),
+	KUNIT_CASE(ssif_bmc_test_stop_during_start_discards_partial_request),
+	KUNIT_CASE(ssif_bmc_test_read_interrupts_partial_write),
+	KUNIT_CASE(ssif_bmc_test_write_interrupts_response_send),
+	KUNIT_CASE(ssif_bmc_test_write_interrupts_response_sending),
+	KUNIT_CASE(ssif_bmc_test_timeout_interrupt_allows_retry),
+	{}
+};
+
+static struct kunit_suite ssif_bmc_test_suite = {
+	.name = "ssif_bmc_test",
+	.init = ssif_bmc_test_init,
+	.exit = ssif_bmc_test_exit,
+	.test_cases = ssif_bmc_test_cases,
+};
+
+kunit_test_suite(ssif_bmc_test_suite);
+#endif
+
 module_i2c_driver(ssif_bmc_driver);
 
 MODULE_AUTHOR("Quan Nguyen <quan@os.amperecomputing.com>");
-- 
2.20.1


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
