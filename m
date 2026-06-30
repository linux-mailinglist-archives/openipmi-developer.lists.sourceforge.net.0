Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zBBQMn8ARGqfnAoAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Jun 2026 19:44:31 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA326E7021
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Jun 2026 19:44:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=QQmEBvYD;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=Lxm37i7z;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=aNqc1Tku;
	dkim=fail ("body hash did not verify") header.d=redhat.com header.s=mimecast20190719 header.b=Y2pI6e3f;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=pass (policy=none) header.from=lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=suUYa/Nse4WtR+hfT1wmDdrmxkv/m+IF7hD6v25+jPs=; b=QQmEBvYDAG4xpvEpsvxvcYKKaD
	Vv/Z9NeQAGgYDeF0bJT0OS46DhGzwaOK9O6lA82hjSpuOmErFW9dpML6+EFhIq3BR1LRv/kBiUSHy
	ob7viYc+ko2FrkmkmZ3upgpE2vlEY8SPLOJtZtKzicOx03ikAeGElpAIcXfkPy8zCvYM=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wecVS-0007kB-7N;
	Tue, 30 Jun 2026 17:44:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <snishika@redhat.com>) id 1wecVP-0007k1-L2
 for openipmi-developer@lists.sourceforge.net;
 Tue, 30 Jun 2026 17:44:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=content-type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+bbkNqe5YFTxUB0CvY150T/ECqWZsJLYm1FNCJGJ2HE=; b=Lxm37i7zkauUnERcn/1GIi4PVE
 LcG9JRdFCEtU3JdcwjX4icZgF010LY9d/GPYh+b2nTpsPBx2MljdK9NUYxq2MNXfLYLBN93WSC0vL
 72APiHMn8CcDtVQ2BzWKvX8HwgMP0p+uZArBVBsXNZnOgKjW1CJLKATX2/8n0YJHS94A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=content-type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+bbkNqe5YFTxUB0CvY150T/ECqWZsJLYm1FNCJGJ2HE=; b=aNqc1TkuaO9yPjbpx1/Y74kXSp
 BVznRi7dWSeDo7Bmjw3w9iDSPu1MWxinWv/HxFMwE3fB2LdZvifv5cBx03Le5ULoGtb+GPwNk6hsp
 qmwonNm2p8qYldXZd6P45glIy4pXa/+RKn2bErWqdoSNdw7VmJkETuyLGWwD/GOeZ7ro=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wecVM-0000Ib-Tt for openipmi-developer@lists.sourceforge.net;
 Tue, 30 Jun 2026 17:44:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1782841446;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+bbkNqe5YFTxUB0CvY150T/ECqWZsJLYm1FNCJGJ2HE=;
 b=Y2pI6e3f/0i0IFmgjA95wraodbPwn0yAr81aBetZWqt2CtEK/eHkQQZrMOYPansuOMMwfZ
 9sM4q+e3nM/Uy48KZEFscifTSgZIKl0WoOaj26Riq+VKb4sgfMY3RFtfBkgDQrjVlCyNoX
 9RNSupSpNF0kyxYPRriN+xu1/edJIWU=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-60-Su8BYmuaN-eymNEhhkeaig-1; Tue,
 30 Jun 2026 13:44:04 -0400
X-MC-Unique: Su8BYmuaN-eymNEhhkeaig-1
X-Mimecast-MFC-AGG-ID: Su8BYmuaN-eymNEhhkeaig_1782841443
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 8CF451955F76; Tue, 30 Jun 2026 17:44:03 +0000 (UTC)
Received: from fedora.flets-east.jp (unknown [10.64.240.15])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 9607A3000C15; Tue, 30 Jun 2026 17:44:01 +0000 (UTC)
To: corey@minyard.net
Date: Wed,  1 Jul 2026 02:43:48 +0900
Message-ID: <20260630174348.1483814-1-snishika@redhat.com>
In-Reply-To: <akPkL1b8xuexlYqi@mail.minyard.net>
References: <akPkL1b8xuexlYqi@mail.minyard.net>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-MFC-PROC-ID: kPkkmr9AjglB315XsFSPanSdrm28RFtVXXWsEcu9Qbk_1782841443
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: try_smi_init() allocates new_smi->si_sm and later calls
 ipmi_register_smi_mod(), 
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
X-Headers-End: 1wecVM-0000Ib-Tt
Subject: [Openipmi-developer] [PATCH v2] ipmi: si: Fix NULL pointer
 dereference after failed registration
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
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	ARC_NA(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,redhat.com:s=mimecast20190719];
	RECEIVED_HELO_LOCALHOST(0.00)[];
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
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[snishika@redhat.com]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ECA326E7021

try_smi_init() allocates new_smi->si_sm and later calls
ipmi_register_smi_mod(), which maps to ipmi_add_smi().

During ipmi_add_smi(), the upper IPMI message handler obtains the
initial BMC device information through __bmc_get_device_id(). This can
fail if the BMC does not return a successful response to the Get Device
ID command.

When the BMC returns a nonzero completion code, the device-id helper
retries the command and eventually returns -EIO if the device ID still
cannot be fetched.

On this failure path, ipmi_add_smi() logs "Unable to get the device id"
and goes to out_err_started, where it invokes the lower driver's
shutdown callback. try_smi_init() then logs the returned registration
failure:

 ipmi_si IPI0001:00: IPMI message handler: Unable to get the device id: -5
 ipmi_si IPI0001:00: Unable to register device: error -5

For ipmi_si, the shutdown callback is shutdown_smi(), which cleans up
the SI state machine data, frees smi_info->si_sm, and sets
smi_info->si_sm and smi_info->intf to NULL.

However, intf->in_shutdown is not set on this failed-registration
rollback path. Therefore, the asynchronous redo_bmc_reg work item can
still retry BMC device-id probing after the lower driver has already
cleared its SI state machine data. In the observed case, that retry path
reached start_next_msg(), which passed the NULL smi_info->si_sm pointer
to the selected KCS state machine handler:

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

Set intf->in_shutdown on the out_err_started path before invoking the
lower driver's shutdown callback. This prevents later redo_bmc_reg
retries from using an interface whose lower driver state has been
cleaned up, and applies the same shutdown state to other IPMI interfaces
as well.

Signed-off-by: Seiji Nishikawa <snishika@redhat.com>
---
Thanks, I agree. I moved the fix to the ipmi_add_smi() rollback path in v2
and dropped the SI-side NULL checks.

Changes in v2:
- Move the fix to ipmi_add_smi() by setting intf->in_shutdown on the
  out_err_started path, as suggested by Corey.
- Drop the NULL checks in ipmi_si_intf.c.

 drivers/char/ipmi/ipmi_msghandler.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index ab4c85f3d6fe..8d9f2e647d9b 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -3757,6 +3757,7 @@ int ipmi_add_smi(struct module         *owner,
  out_err_bmc_reg:
 	ipmi_bmc_unregister(intf);
  out_err_started:
+	intf->in_shutdown = true;
 	if (intf->handlers->shutdown)
 		intf->handlers->shutdown(intf->send_info);
  out_err:
-- 
2.54.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
