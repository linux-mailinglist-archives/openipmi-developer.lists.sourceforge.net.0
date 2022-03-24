Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBC14E9B4F
	for <lists+openipmi-developer@lfdr.de>; Mon, 28 Mar 2022 17:46:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nYrZf-0000wS-Hs; Mon, 28 Mar 2022 15:46:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <steve@sk2.org>) id 1nXSCE-0004g7-Dh
 for openipmi-developer@lists.sourceforge.net; Thu, 24 Mar 2022 18:28:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zZ4ZrNctwAtZsyQ3GIs/bJEfAJEofShNqc+mP6VzLSk=; b=N6bjDsgjzxwkXoAdfUpSf0wsY6
 VP/41YBHaAlaHNAkoCXpeG4d6+/3I+mdxpJaLKVYsmKYRv2aTAnKzC5NUaqSmCgCWcEUwnTGcvl6G
 C7iDV23sag4CPc1Hbg9q4Nz82ePqUnctMksMnPUiH8gq3RymULEd0l90wTgtNlny2jek=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=zZ4ZrNctwAtZsyQ3GIs/bJEfAJEofShNqc+mP6VzLSk=; b=W
 HbLA4Yl2AfXK4BYY5oH1GmJXWSlnmvq9FxeWWC+di2LNgnhOMlnyzIBDH3uXrIxRcbnlkBvRHaTrH
 0dyx6UZuFCHcJaE8BnOeAfI2KnhkwsJIfDan7HQ0etZjnuZyjCHZnuChDntn35wKuV2WTIYiwy766
 YyOd51mzjwUP162M=;
Received: from 5.mo575.mail-out.ovh.net ([46.105.62.179])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nXSCA-00AfFy-W7
 for openipmi-developer@lists.sourceforge.net; Thu, 24 Mar 2022 18:28:28 +0000
Received: from player728.ha.ovh.net (unknown [10.110.171.131])
 by mo575.mail-out.ovh.net (Postfix) with ESMTP id BE45D24A03
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Mar 2022 17:12:15 +0000 (UTC)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
 (Authenticated sender: steve@sk2.org)
 by player728.ha.ovh.net (Postfix) with ESMTPSA id 4F1F928AEF1BE;
 Thu, 24 Mar 2022 17:12:11 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-102R00476d4bff7-adb1-4465-b39a-27e7b6ccfe9d,
 78FFD8E4238D9337B8F0C8EEA79873C5FE5514E5) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
From: Stephen Kitt <steve@sk2.org>
To: Corey Minyard <minyard@acm.org>
Date: Thu, 24 Mar 2022 18:11:59 +0100
Message-Id: <20220324171159.544565-1-steve@sk2.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 11992804335307884166
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvvddrudegledgleegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefuthgvphhhvghnucfmihhtthcuoehsthgvvhgvsehskhdvrdhorhhgqeenucggtffrrghtthgvrhhnpeetgedugfelkeeikeetgeegteevfeeufeetuefgudeiiedthfehtdeffeekvdeffeenucfkpheptddrtddrtddrtddpkedvrdeihedrvdehrddvtddunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehplhgrhigvrhejvdekrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepshhtvghvvgesshhkvddrohhrghdpnhgspghrtghpthhtohepuddprhgtphhtthhopehophgvnhhiphhmihdquggvvhgvlhhophgvrheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvth
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The i2c probe functions here don't use the id information
 provided in their second argument, so the single-parameter i2c probe function
 ("probe_new") can be used instead. This avoids scanning the identifier tables
 during probes. 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.62.179 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [46.105.62.179 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1nXSCA-00AfFy-W7
X-Mailman-Approved-At: Mon, 28 Mar 2022 15:46:28 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: use simple i2c probe function
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
Cc: Wolfram Sang <wsa@kernel.org>, openipmi-developer@lists.sourceforge.net,
 Stephen Kitt <steve@sk2.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The i2c probe functions here don't use the id information provided in
their second argument, so the single-parameter i2c probe function
("probe_new") can be used instead.

This avoids scanning the identifier tables during probes.

Signed-off-by: Stephen Kitt <steve@sk2.org>
---
 drivers/char/ipmi/ipmb_dev_int.c | 5 ++---
 drivers/char/ipmi/ipmi_ipmb.c    | 5 ++---
 drivers/char/ipmi/ipmi_ssif.c    | 4 ++--
 3 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/char/ipmi/ipmb_dev_int.c b/drivers/char/ipmi/ipmb_dev_int.c
index 49b8f22fdcf0..db40037eb347 100644
--- a/drivers/char/ipmi/ipmb_dev_int.c
+++ b/drivers/char/ipmi/ipmb_dev_int.c
@@ -299,8 +299,7 @@ static int ipmb_slave_cb(struct i2c_client *client,
 	return 0;
 }
 
-static int ipmb_probe(struct i2c_client *client,
-			const struct i2c_device_id *id)
+static int ipmb_probe(struct i2c_client *client)
 {
 	struct ipmb_dev *ipmb_dev;
 	int ret;
@@ -369,7 +368,7 @@ static struct i2c_driver ipmb_driver = {
 		.name = "ipmb-dev",
 		.acpi_match_table = ACPI_PTR(acpi_ipmb_id),
 	},
-	.probe = ipmb_probe,
+	.probe_new = ipmb_probe,
 	.remove = ipmb_remove,
 	.id_table = ipmb_id,
 };
diff --git a/drivers/char/ipmi/ipmi_ipmb.c b/drivers/char/ipmi/ipmi_ipmb.c
index ba0c2d2c6bbe..845387d17efb 100644
--- a/drivers/char/ipmi/ipmi_ipmb.c
+++ b/drivers/char/ipmi/ipmi_ipmb.c
@@ -436,8 +436,7 @@ static int ipmi_ipmb_remove(struct i2c_client *client)
 	return 0;
 }
 
-static int ipmi_ipmb_probe(struct i2c_client *client,
-			   const struct i2c_device_id *id)
+static int ipmi_ipmb_probe(struct i2c_client *client)
 {
 	struct device *dev = &client->dev;
 	struct ipmi_ipmb_dev *iidev;
@@ -528,7 +527,7 @@ static struct i2c_driver ipmi_ipmb_driver = {
 		.name = DEVICE_NAME,
 		.of_match_table = of_ipmi_ipmb_match,
 	},
-	.probe		= ipmi_ipmb_probe,
+	.probe_new	= ipmi_ipmb_probe,
 	.remove		= ipmi_ipmb_remove,
 	.id_table	= ipmi_ipmb_id,
 };
diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index 48aab77abebf..9fa8755bbb6a 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -1619,7 +1619,7 @@ static int ssif_check_and_remove(struct i2c_client *client,
 	return 0;
 }
 
-static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
+static int ssif_probe(struct i2c_client *client)
 {
 	unsigned char     msg[3];
 	unsigned char     *resp;
@@ -2037,7 +2037,7 @@ static struct i2c_driver ssif_i2c_driver = {
 	.driver		= {
 		.name			= DEVICE_NAME
 	},
-	.probe		= ssif_probe,
+	.probe_new	= ssif_probe,
 	.remove		= ssif_remove,
 	.alert		= ssif_alert,
 	.id_table	= ssif_id,
-- 
2.27.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
