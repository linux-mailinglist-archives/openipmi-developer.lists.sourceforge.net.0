Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5sePJeb3PWoh9ggAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 26 Jun 2026 05:54:14 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 279256C9F94
	for <lists+openipmi-developer@lfdr.de>; Fri, 26 Jun 2026 05:54:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=IfH2V10U;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=VAGG3FdW;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=EwW5gcl7;
	dkim=fail ("body hash did not verify") header.d=email-od.com header.s=dkim header.b=Ug5lIfdE;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=28FAnr3wA+3HMykp52UdtCHvfwcJUXxw9xDAZ8DO/L0=; b=IfH2V10U4qXgFmDFexy28eIdTY
	nO+z0Tk74VT0ZTcHlJuc9hoX1FNk2xMOkw6XxspnlMrM6nMIJZcHhbN42rHwDGCptpyPbJU6ntNxd
	BcboF0aBNwtJlvqq9Xh+xrf1rCZv/MXdRxkPrDNDp2tNJhPw2I3shAr3u0ehVkvP66YQ=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wcxdn-0003lO-Df;
	Fri, 26 Jun 2026 03:54:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <4504.82.47781000001268a.b93c8fa8c33b6913544b93bae4e16e77@email-od.com>)
 id 1wctnt-0004ag-TX for openipmi-developer@lists.sourceforge.net;
 Thu, 25 Jun 2026 23:48:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mUM4h5webrIL3hHJwfioi6vOP6GUI22fY7vCjVOlmik=; b=VAGG3FdWp2Sz2xpadC1JLxvvKv
 6EUcG/IjGCXlmwga4pknkk722ywBQ3jE52Z+f+m2p418IeQDd1xIRGq4y7reaug51ddRIdwLabEAh
 j/32FbbecXDulmOve+LdhlfQ5ZZtXq2W5PvsdTCXkGlp5y3d+I7ap4aGh4kcyG14z1YQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mUM4h5webrIL3hHJwfioi6vOP6GUI22fY7vCjVOlmik=; b=EwW5gcl7DQ4hWhDAidDjpwtKtm
 gCIsWdTATqCtKKgGBhEZEkTzte6yWL6gXpOMDfmlHuBAe2276aMME9Mq+uu1XDWX8RKgJelTUOcDv
 ERTKhKr5ubfW0nPRFGUmkqzbaPVT061B12QC2aLEwtvTX+LPnDeswQC+qnRobow3tAkc=;
Received: from s1-ba86.socketlabs.email-od.com ([142.0.186.134])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wctns-0005Hy-Pj for openipmi-developer@lists.sourceforge.net;
 Thu, 25 Jun 2026 23:48:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=email-od.com;i=@email-od.com;s=dkim;
 c=relaxed/relaxed; q=dns/txt; t=1782431297; x=1785023297;
 h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:subject:cc:to:from:x-thread-info:subject:to:from:cc:reply-to;
 bh=mUM4h5webrIL3hHJwfioi6vOP6GUI22fY7vCjVOlmik=;
 b=Ug5lIfdEHQSAIKeseY6pFBey+yEYz66UI2kBm5Aq0kLYBVRpYtEEAcrP2XfwWrTZdefzgqeTjDLRcIafO1pyjZEoKRHnPMPzfKqJl/Qiw4kRBaDI7FFBLwpB5Lgm8SRfgaGYWuTxND++Sxd4Qn01+LeTIe4ie4TChgiYiiisQy4=
X-Thread-Info: NDUwNC4xMi40Nzc4MTAwMDAwMTI2OGEub3BlbmlwbWktZGV2ZWxvcGVyPWxpc3RzLnNvdXJjZWZvcmdlLm5ldA==
x-xsSpam: eyJTY29yZSI6MCwiRGV0YWlscyI6bnVsbH0=
Received: from nalramli-fst-tp.. (d4-50-191-215.clv.wideopenwest.com
 [50.4.215.191])
 by nalramli.com (Postfix) with ESMTPSA id 3E0D92CE01A2;
 Thu, 25 Jun 2026 18:47:46 -0400 (EDT)
From: "Nabil S. Alramli" <dev@nalramli.com>
To: corey@minyard.net
Date: Thu, 25 Jun 2026 18:47:41 -0400
Message-ID: <20260625224741.3632191-2-dev@nalramli.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260625224741.3632191-1-dev@nalramli.com>
References: <20260625224741.3632191-1-dev@nalramli.com>
MIME-Version: 1.0
X-Spam-Score: -4.9 (----)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On certain hardware, the BMC firmware takes longer to become
 available. We get errors that look like below, after which the BMC does not
 recover and is unavailable for the rest of the boot: ``` kernel: ipmi_si
 IPI0001:00: BMC returned 0xc0,
 retry get bmc device id kernel: ipmi_si IPI0001:00:
 BMC returned 0xc0, retry get bmc device id kernel: ipmi_si IPI0001:00: BMC
 returned 0xc0, retry g [...] 
 Content analysis details:   (-4.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.2 RCVD_IN_IADB_DK        RBL: IADB: Sender publishes Domain Keys record
 [142.0.186.134 listed in iadb.isipp.com]
 -0.0 RCVD_IN_IADB_SENDERID  RBL: IADB: Sender publishes Sender ID record
 [142.0.186.134 listed in iadb.isipp.com]
 -0.2 RCVD_IN_IADB_RDNS      RBL: IADB: Sender has reverse DNS record
 [142.0.186.134 listed in iadb.isipp.com]
 -2.1 RCVD_IN_IADB_OPTIN     RBL: IADB: All mailing list mail is opt-in
 [142.0.186.134 listed in iadb.isipp.com]
 -0.0 RCVD_IN_IADB_ESP       RBL: IADB: Email Service Provider (ESP)
 [142.0.186.134 listed in iadb.isipp.com]
 -0.0 RCVD_IN_IADB_SPF       RBL: IADB: Sender publishes SPF record
 [142.0.186.134 listed in iadb.isipp.com]
 -0.4 RCVD_IN_IADB_LISTED    RBL: Participates in the IADB system
 [142.0.186.134 listed in iadb.isipp.com]
 -2.2 RCVD_IN_IADB_VOUCHED   RBL: ISIPP IADB lists as vouched-for sender
 [142.0.186.134 listed in iadb.isipp.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1wctns-0005Hy-Pj
X-Mailman-Approved-At: Fri, 26 Jun 2026 03:54:03 +0000
Subject: [Openipmi-developer] [bmc/for-next RFC 1/1] ipmi: Retry BMC 100
 times
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
Cc: openipmi-developer@lists.sourceforge.net, nalramli@fastly.com,
 dev@nalramli.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:nalramli@fastly.com,m:dev@nalramli.com,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[dev@nalramli.com,openipmi-developer-bounces@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[nalramli.com: no valid DMARC record];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,email-od.com:-];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@nalramli.com,openipmi-developer-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,email-od.com:s=dkim];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 279256C9F94

On certain hardware, the BMC firmware takes longer to become available. We
get errors that look like below, after which the BMC does not recover and
is unavailable for the rest of the boot:

```
kernel: ipmi_si IPI0001:00: BMC returned 0xc0, retry get bmc device id
kernel: ipmi_si IPI0001:00: BMC returned 0xc0, retry get bmc device id
kernel: ipmi_si IPI0001:00: BMC returned 0xc0, retry get bmc device id
kernel: ipmi_si IPI0001:00: BMC returned 0xc0, retry get bmc device id
kernel: ipmi_si IPI0001:00: BMC returned 0xc0, retry get bmc device id
kernel: ipmi_si IPI0001:00: There appears to be no BMC at this location
```

The fix is to increase the number of retries from 5 to 100, which allows
the BMC firmware on this hardware enough time to start up.

Signed-off-by: Nabil S. Alramli <dev@nalramli.com>
---
 include/linux/ipmi.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/ipmi.h b/include/linux/ipmi.h
index 7da6602eab71..662c664ce9de 100644
--- a/include/linux/ipmi.h
+++ b/include/linux/ipmi.h
@@ -339,7 +339,7 @@ struct ipmi_smi_info {
 /* This is to get the private info of struct ipmi_smi */
 extern int ipmi_get_smi_info(int if_num, struct ipmi_smi_info *data);
 
-#define GET_DEVICE_ID_MAX_RETRY		5
+#define GET_DEVICE_ID_MAX_RETRY		100
 
 /* Helper function for computing the IPMB checksum of some data. */
 unsigned char ipmb_checksum(unsigned char *data, int size);
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
