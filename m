Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FNZWJ01QOWrhqQcAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Mon, 22 Jun 2026 17:10:05 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 493496B09C9
	for <lists+openipmi-developer@lfdr.de>; Mon, 22 Jun 2026 17:10:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=QyxXpAcK;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b="fRBpKP/3";
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b="O a+VVdV";
	dkim=fail ("body hash did not verify") header.d=linux.dev header.s=key1 header.b=WEXsStHl;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=linux.dev (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mhAa1YYmHODDwZzF98Edb1AkM+f4oyndqvWE7Y6RIJ8=; b=QyxXpAcKFnkrHT6E9yeLXg6f7z
	FejympttkVxWJlReoA+O7Y20vJVSqzNForyPWnUn6LmNVjIpisXvTwtnRiRumA2IeQh/EnZsDP9xh
	dQM0YksrIWa8Jvs9jL4M7gMCepsinqFTI/OhSxmXA0Cd7/FKajEVR12/yHYpE11pvMxQ=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wbgHV-00013X-RV;
	Mon, 22 Jun 2026 15:09:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zenghui.yu@linux.dev>) id 1wauoD-0002Va-1l
 for openipmi-developer@lists.sourceforge.net;
 Sat, 20 Jun 2026 12:28:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AMozjfseFR3D7uPfm1ySGa3f+IL5txozUFi6PIwGyns=; b=fRBpKP/36UxroOBeDgTg4F0K5M
 ZBlMUWOoYpgjGBmsYlkNuVg5Wv9yt+hNVQP1VkNaqd2qRQEybOWiWUTXx2/hFItxjb74HhXaumf5l
 +FpDOhhnd3FVyc+0Hqc09K5o8kz9Am2j0LVC6dpmf3E3g/NViVXlswpq+PG6AzqBJMy4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AMozjfseFR3D7uPfm1ySGa3f+IL5txozUFi6PIwGyns=; b=O
 a+VVdVq4NXSCf4cT+ihxy59zJ3cYZ7s1A7TPA0IG/PhU85fH1o+DtIl+AAbM2NeznBMjR88xymNZg
 RGMUY+ofkHa9eosv0ulqnxEny/5OjTJ1LEzumuUnjnnGs8lldSvNMMVKKozL/gUsZURcI+hxq6Hvy
 FVLsObkoX1egaYcc=;
Received: from out-177.mta1.migadu.com ([95.215.58.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wauoB-0008M9-Nq for openipmi-developer@lists.sourceforge.net;
 Sat, 20 Jun 2026 12:28:25 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
 t=1781958497;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=AMozjfseFR3D7uPfm1ySGa3f+IL5txozUFi6PIwGyns=;
 b=WEXsStHlf3/vrNf4B3kffMSyWiEIf9T4zrfllqcZF/DCj5Xr349kdQWhAmZImVG/Xkg2Yr
 iCiSZONDg7nPDkyga5uNv8IEHD/Ok7TlKqwESMRBCnGjNXiEB82toJhKEd/tvTQtqXw46z
 691xBSrkD+fILqHXaaZoB7GvLyLO61w=
From: Zenghui Yu <zenghui.yu@linux.dev>
To: openipmi-developer@lists.sourceforge.net, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Sat, 20 Jun 2026 20:27:47 +0800
Message-ID: <20260620122747.7902-1-zenghui.yu@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The correct path of the "hotmod" module parameter should be
 /sys/module/ipmi_si/parameters/hotmod. Fix it. Signed-off-by: Zenghui Yu
 <zenghui.yu@linux.dev> --- Documentation/driver-api/ipmi.rst | 2 +- 1 file
 changed, 1 insertion(+), 1 deletion(-) 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [95.215.58.177 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1wauoB-0008M9-Nq
X-Mailman-Approved-At: Mon, 22 Jun 2026 15:09:49 +0000
Subject: [Openipmi-developer] [PATCH] docs: ipmi: Fix path of the "hotmod"
 module parameter
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
Cc: corey@minyard.net, Zenghui Yu <zenghui.yu@linux.dev>,
 skhan@linuxfoundation.org, corbet@lwn.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[50];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[linux.dev : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,linux.dev:s=key1];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,linux.dev:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zenghui.yu@linux.dev,openipmi-developer-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[openipmi-developer];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:email,linux.dev:mid,linux.dev:from_mime,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 493496B09C9

The correct path of the "hotmod" module parameter should be
/sys/module/ipmi_si/parameters/hotmod. Fix it.

Signed-off-by: Zenghui Yu <zenghui.yu@linux.dev>
---
 Documentation/driver-api/ipmi.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/driver-api/ipmi.rst b/Documentation/driver-api/ipmi.rst
index f52ab2df2569..d08cee98e34a 100644
--- a/Documentation/driver-api/ipmi.rst
+++ b/Documentation/driver-api/ipmi.rst
@@ -495,7 +495,7 @@ tuned to the user's desired performance.
 
 The driver supports a hot add and remove of interfaces.  This way,
 interfaces can be added or removed after the kernel is up and running.
-This is done using /sys/modules/ipmi_si/parameters/hotmod, which is a
+This is done using /sys/module/ipmi_si/parameters/hotmod, which is a
 write-only parameter.  You write a string to this interface.  The string
 has the format::
 
-- 
2.53.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
