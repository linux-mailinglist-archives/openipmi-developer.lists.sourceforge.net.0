Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6ILbE1ODz2mwwwYAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 03 Apr 2026 11:07:31 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6F8392945
	for <lists+openipmi-developer@lfdr.de>; Fri, 03 Apr 2026 11:07:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Mime-Version:References:In-Reply-To:
	Message-Id:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4dae4EvC741CaMdiEygSILTVHJBNrxmEuBdglcb2HpQ=; b=SiDiu/louu3xtK/7sPWkfRn2lD
	E34eFuEyNpGAqs9GIBAbWw4hdVNH2SCrszIML0dNeyG6+99bj0yutkqO0NXRQURmxEW8Y8Oue5YxE
	QF5Kd0AvEpOvpGf3pidOKQ/dShQ3CV7I3OokZHc/pco7SmGRw11PIW2m+3/sPRnHF5Vg=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1w8aUs-0004Mz-R7;
	Fri, 03 Apr 2026 09:07:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangjian.3032@bytedance.com>) id 1w8aUr-0004Mg-5Y
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Apr 2026 09:07:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Mime-Version:Subject:From:References:In-Reply-To:
 Content-Transfer-Encoding:Message-Id:Content-Type:Date:To:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AF4FjXvtWI3hLYjmxz406KsTzG4DnTy9SHWE58+CnaQ=; b=PIhmes+Br+M60At2OjS03c0d96
 H2bbvxzDqxnwF1QKN3UZSZuJERvrnfFljaUZzh5wM3JHPE4IyXYqVaBWal5vsEaHBWVpKFvdYeGS3
 yawOX2iW5Hn1kqmGVPLZXP+A+QcW1g8XocfqsIL04jrk7OwVROEAFjEpOnp1Ju24FQEE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Mime-Version:Subject:From:References:In-Reply-To:
 Content-Transfer-Encoding:Message-Id:Content-Type:Date:To:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AF4FjXvtWI3hLYjmxz406KsTzG4DnTy9SHWE58+CnaQ=; b=AdbuXE/hV//GTO/jPuhOAJu8f9
 u4OZdTwWxhZi5PhsQvKYNd79c99YXMl7GX0zNBy958w2ldP8MGre2c4fDvTTAQ9Zeb4vWA4kWvwVz
 XE5JrEdwfgxXKroGVnM/O86lTi1WugImv/1XFk8SqV6ChuQi4H1JYMc4k3U1mMBXhuuE=;
Received: from va-1-111.ptr.blmpb.com ([209.127.230.111])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1w8aUq-0003O7-H2 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Apr 2026 09:07:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=2212171451; d=bytedance.com; t=1775207224; h=from:subject:
 mime-version:from:date:message-id:subject:to:cc:reply-to:content-type:
 mime-version:in-reply-to:message-id;
 bh=AF4FjXvtWI3hLYjmxz406KsTzG4DnTy9SHWE58+CnaQ=;
 b=FrW+SCDoFxZCu+vVal3dVyRbvV7jbWo+UtjkeCIjEukqLKN5wdT5FqFjzpHSl6bzkgvRN7
 KVBba2Z/rakQGEHJLBdPWjxlqagv5uV7jlcV26iIFx7NYUYHV3E7pNpxfbOK+8HonW2OFV
 MwqLi7If1OAvv4/E/BppCUVKHxth8j/3AP/m6cS0APHkLpdszbrieNGzmTsaikcPHCsFIN
 zRYoH7UmLklCMG2vszOhx7hBrmj+4rKK03bvPLHuQIWl8sFDlz/o/iGbNqM1dAKMHSQpPK
 gIzYzOYd8s/VOvJiE1thKSKWlCi7SIMHUyIGLS//2sIDNYgLXtaMXsCLFqoy1A==
To: "Corey Minyard" <corey@minyard.net>, 
 "Quan Nguyen" <quan@os.amperecomputing.com>, 
 <openipmi-developer@lists.sourceforge.net>, <linux-kernel@vger.kernel.org>
Date: Fri,  3 Apr 2026 17:06:02 +0800
Message-Id: <20260403090603.3988423-5-zhangjian.3032@bytedance.com>
In-Reply-To: <20260403090603.3988423-1-zhangjian.3032@bytedance.com>
References: <20260403090603.3988423-1-zhangjian.3032@bytedance.com>
Mime-Version: 1.0
X-Lms-Return-Path: <lba+269cf8336+6f0190+lists.sourceforge.net+zhangjian.3032@bytedance.com>
X-Mailer: git-send-email 2.20.1
X-Original-From: Jian Zhang <zhangjian.3032@bytedance.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Add some unit test for state machine when in SSIF_ABORTING
 state. Fixes: dd2bc5cc9e25 ("ipmi: ssif_bmc: Add SSIF BMC driver")
 Signed-off-by:
 Jian Zhang <zhangjian.3032@bytedance.com> --- v2: remove undefined symbol
 response_in_send 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1w8aUq-0003O7-H2
Subject: [Openipmi-developer] [PATCH v2 5/5] ipmi: ssif_bmc: add unit test
 for state machine
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:dkim,bytedance.com:email,bytedance.com:replyto,bytedance.com:mid]
X-Rspamd-Queue-Id: 7C6F8392945
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add some unit test for state machine when in SSIF_ABORTING state.

Fixes: dd2bc5cc9e25 ("ipmi: ssif_bmc: Add SSIF BMC driver")
Signed-off-by: Jian Zhang <zhangjian.3032@bytedance.com>
---
v2: remove undefined symbol response_in_send

 drivers/char/ipmi/Kconfig    |  10 +
 drivers/char/ipmi/ssif_bmc.c | 401 +++++++++++++++++++++++++++++++++++
 2 files changed, 411 insertions(+)

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
index 646a1e9ffbb7..726626126cea 100644
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
 
@@ -886,6 +889,404 @@ static struct i2c_driver ssif_bmc_driver = {
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
+		timer_delete_sync(&test_ctx->ssif_bmc.response_timer);
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
+	timer_delete_sync(&ssif_bmc->response_timer);
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
