Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UEWNA8gGRWpx5QoAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Wed, 01 Jul 2026 14:23:36 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 435506ED442
	for <lists+openipmi-developer@lfdr.de>; Wed, 01 Jul 2026 14:23:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=O+CquHL6;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=a0wtPG6t;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b="b 76bu/7";
	dkim=fail ("body hash did not verify") header.d=redhat.com header.s=mimecast20190719 header.b=bFgUBsBp;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=pass (policy=none) header.from=lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SJUqcDzYp0hsxlQh0l/KfFdjfFRXuduSHeKmJfZpCqE=; b=O+CquHL60OvyUd9c2bIAo4+n4H
	E9F7ZFK7k4IrM+40A3w1LLZljv3H5m6ZyqtYUkAoZo3vckawbkHH1UV9pP90HNlow9Rsnv3YC8pML
	fPrDEQ/6f7UUxWorfJ3UFInL+sJrS6fFA7JUliTI1SElCwM8Xe5DPhnKsF8rq38oIBiY=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wetyS-0006l1-0h;
	Wed, 01 Jul 2026 12:23:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <snishika@redhat.com>) id 1weZ7a-0003er-9z
 for openipmi-developer@lists.sourceforge.net;
 Tue, 30 Jun 2026 14:07:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=content-type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wiloxeC2VH7kInMbYLcfoeEPiR7OXcKtKOeKZkyjsnA=; b=a0wtPG6tYJPMhZWYGY5jwKlsyP
 rBnLaUGiEwew4nMM4DfCgIhsNVI74O3f4Iz2g+QcpPXQjHPtWyd1UpPb2Pbw26unMCCRj2brqDlO4
 AH1CAv0DA5evQtmL62dR2/6A5AKc86qxdPt0zcwhFrpou5Qbb8OQsgaEzWrHLDTxIbFk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=content-type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wiloxeC2VH7kInMbYLcfoeEPiR7OXcKtKOeKZkyjsnA=; b=b
 76bu/78a4M6FnjnJsM49Nd/50HRjODcP0l9rAKCy3dOew7ETPgB2vHwHiCMsEyMVR3z0evk4i/485
 UmKZ4K6m5kADcQidPxEbXkbnPPBZNSn87dq30eubqxovtpaF57jBSKPg9riNsRc/5Awiea82M5aay
 aHnA6QiV1F381uuw=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1weZ7Y-0003co-DM for openipmi-developer@lists.sourceforge.net;
 Tue, 30 Jun 2026 14:07:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1782828437;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=wiloxeC2VH7kInMbYLcfoeEPiR7OXcKtKOeKZkyjsnA=;
 b=bFgUBsBpFJgXiDNqMBgTvTE+lkShy+Yqc3Ux8skQW/qyS/xWtS5cP2b8dFnkXN46uF6jF6
 a0TCJMgW86n/OaX13nnSQp3jPE5VgmZgG9hnG1QEAVKNxb3Vr/IFyvUNwTnjTYS4YkLS+A
 7XHGMteh1m/5lufW87+h7mSHp/f+3B4=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-416-wlKNI_17OQi435mUHwTjrQ-1; Tue,
 30 Jun 2026 10:07:14 -0400
X-MC-Unique: wlKNI_17OQi435mUHwTjrQ-1
X-Mimecast-MFC-AGG-ID: wlKNI_17OQi435mUHwTjrQ_1782828432
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id AF9521800869; Tue, 30 Jun 2026 14:07:12 +0000 (UTC)
Received: from fedora.flets-east.jp (unknown [10.64.240.15])
 by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id B8586180057F; Tue, 30 Jun 2026 14:07:10 +0000 (UTC)
To: corey@minyard.net
Date: Tue, 30 Jun 2026 23:06:33 +0900
Message-ID: <20260630140633.1410091-1-snishika@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-MFC-PROC-ID: gTpltaaixg5YBkZA-Vm8k6Cxx0VmpH_u2QCsglPnYa0_1782828432
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: try_smi_init() allocates new_smi->si_sm and later calls
 ipmi_register_smi(), 
 which maps to ipmi_add_smi(). During ipmi_add_smi(), the upper IPMI message
 handler obtains the initial BMC device information through
 __bmc_get_device_id().
 This can fail if the BMC does not return a successful response to the Ge
 [...] Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1weZ7Y-0003co-DM
X-Mailman-Approved-At: Wed, 01 Jul 2026 12:23:23 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: si: Fix NULL pointer dereference
 in start_kcs_transaction()
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
From: Seiji Nishikawa via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Seiji Nishikawa <snishika@redhat.com>
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-8.61 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	ARC_NA(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,redhat.com:s=mimecast20190719];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,redhat.com:-];
	RCVD_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	HAS_REPLYTO(0.00)[snishika@redhat.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:from_mime,lists.sourceforge.net:dkim,lists.sourceforge.net:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 435506ED442

try_smi_init() allocates new_smi->si_sm and later calls
ipmi_register_smi(), which maps to ipmi_add_smi().

During ipmi_add_smi(), the upper IPMI message handler obtains the initial
BMC device information through __bmc_get_device_id(). This can fail if the
BMC does not return a successful response to the Get Device ID command.

When the BMC returns a nonzero completion code, the device-id helper
retries the command and eventually returns -EIO if the device ID still
cannot be fetched.

On this failure path, ipmi_add_smi() logs "Unable to get the device id" and
goes to out_err_started, where it invokes the lower driver's shutdown
callback. try_smi_init() then logs the returned registration failure:

 ipmi_si IPI0001:00: IPMI message handler: Unable to get the device id: -5
 ipmi_si IPI0001:00: Unable to register device: error -5

For ipmi_si, the shutdown callback is shutdown_smi(), which cleans up the
SI state machine data, frees smi_info->si_sm, and sets smi_info->si_sm and
smi_info->intf to NULL.

        kfree(smi_info->si_sm);
        smi_info->si_sm = NULL;

        smi_info->intf = NULL;

However, the smi_info can still be reached later. In the observed case, the
redo_bmc_reg work item retried BMC device-id probing after shutdown_smi()
had already cleared smi_info->si_sm. The retry path reached
start_next_msg(), which passed the NULL smi_info->si_sm pointer to the
selected KCS state machine handler:

BUG: unable to handle kernel NULL pointer dereference at 0000000000000000
Workqueue: events redo_bmc_reg [ipmi_msghandler]
RIP: start_kcs_transaction+0x2c/0x190 [ipmi_si]
Call Trace:
 start_next_msg+0x50/0x80 [ipmi_si]
 check_start_timer_thread.part.9+0x3b/0x50 [ipmi_si]
 sender+0x69/0x80 [ipmi_si]
 i_ipmi_request+0x2ac/0x9d0 [ipmi_msghandler]
 __get_device_id.isra.29+0xaa/0x180 [ipmi_msghandler]
 __bmc_get_device_id+0xef/0x950 [ipmi_msghandler]
 redo_bmc_reg+0x52/0x60 [ipmi_msghandler]
 process_one_work+0x1a7/0x360

start_next_msg() and smi_event_handler() both invoke the selected SI state
machine handlers with smi_info->si_sm without checking whether the state
machine data has already been freed and cleared.

Add NULL checks before calling into the selected SI state machine handlers.
If the state machine data has already been removed, treat the interface as
idle and avoid dereferencing the cleared state.

Signed-off-by: Seiji Nishikawa <snishika@redhat.com>
---
 drivers/char/ipmi/ipmi_si_intf.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 9a9d12be9bf7..d13d5024352a 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -320,6 +320,9 @@ static enum si_sm_result start_next_msg(struct smi_info *smi_info)
 {
 	int rv;
 
+	if (unlikely(!smi_info->si_sm))
+		return SI_SM_IDLE;
+
 	if (!smi_info->waiting_msg) {
 		smi_info->curr_msg = NULL;
 		rv = SI_SM_IDLE;
@@ -800,6 +803,9 @@ static enum si_sm_result smi_event_handler(struct smi_info *smi_info,
 {
 	enum si_sm_result si_sm_result;
 
+	if (unlikely(!smi_info->si_sm))
+		return SI_SM_IDLE;
+
 restart:
 	if (smi_info->si_state == SI_HOSED)
 		/* Just in case, hosed state is only left from the timeout. */
-- 
2.54.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
