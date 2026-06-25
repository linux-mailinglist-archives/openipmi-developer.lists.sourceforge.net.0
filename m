Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1eqGAuX3PWoc9ggAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 26 Jun 2026 05:54:13 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AB86C9F8C
	for <lists+openipmi-developer@lfdr.de>; Fri, 26 Jun 2026 05:54:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=PcIyEaqh;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=bZV0xViW;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b="M VnFPG6";
	dkim=fail ("body hash did not verify") header.d=email-od.com header.s=dkim header.b=VwlUxnz3;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WYcfLkTw66XT0lnJA4+uQ1ERdnnZMdefOAhaWCXHmMk=; b=PcIyEaqhTBUfz9X0ZRuTtoxuKy
	JXhVr25WGDByrQ0sJpZRmjUlcNRvVSiEbG7b4JEEyQf+B5Qbyi137/BzEG1Tj1D6wOIkFcQ9XDtZV
	DsBsCziQDNV4Dpq4FKdcw9o/5GWpaKtlGky2SeS+IzqVD4qbsQAPyC7QlslD4+KarIZ8=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wcxdn-0003lV-Md;
	Fri, 26 Jun 2026 03:54:05 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <4504.82.42a71000001e5e0.2b31be8c9452564636ac818ffc2660be@email-od.com>)
 id 1wctnx-0004gK-04 for openipmi-developer@lists.sourceforge.net;
 Thu, 25 Jun 2026 23:48:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0SPMdx8GhM75GjgCTs3iuFUa8LHOuzvm7UE11WMzpfg=; b=bZV0xViWG7pyIQKJnfAOdsBZoz
 3H/gvE3CWcpUygk8EvqXSYdE0KThDwWwKEsSBA0OQ44KzX9+lVgjctfXJbnXy8doZ7my93THkenQV
 xAhIphDvFFJ2Z+sINEmZlnHVo5T0lN4VwVNeSjPZSi4Dam0WU4mnnvsLPg9a60Yg6J8c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0SPMdx8GhM75GjgCTs3iuFUa8LHOuzvm7UE11WMzpfg=; b=M
 VnFPG6sCZHt3csd2NDGgtVZOIyo4tbRaVlK7JDS92wgAO2E+LzaM+obVvldLJ68wFzxXYrUcTxgX8
 mz1hCisP+sdKEbmmXvaiOmKGLsbdodOK+I3gkJDWcuA3YF2duKu+K402pzhdJ/pIxSB4Gkwn3seY8
 xByNqxjNaac1E4HU=;
Received: from s1-ba86.socketlabs.email-od.com ([142.0.186.134])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wctnt-0005Hy-Gh for openipmi-developer@lists.sourceforge.net;
 Thu, 25 Jun 2026 23:48:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=email-od.com;i=@email-od.com;s=dkim;
 c=relaxed/relaxed; q=dns/txt; t=1782431298; x=1785023298;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:x-thread-info:subject:to:from:cc:reply-to;
 bh=0SPMdx8GhM75GjgCTs3iuFUa8LHOuzvm7UE11WMzpfg=;
 b=VwlUxnz3IvRmNUjiKzDLwGaWKyuGkVyl7BRopdIXJlPXZeS755LDJUA/JOyuTKn1Jw9lacd1fkXEk203ZLHHTACcApy8NdmVz2Dvfqsr3T6AaJlhA6Gp2nj0g0A/nWlCPBavxl0w3/lhfJ7Ybb8lEDYzMV0uPQ7U0HrRr37xtWo=
X-Thread-Info: NDUwNC4xMi40MmE3MTAwMDAwMWU1ZTAub3BlbmlwbWktZGV2ZWxvcGVyPWxpc3RzLnNvdXJjZWZvcmdlLm5ldA==
x-xsSpam: eyJTY29yZSI6MCwiRGV0YWlscyI6IltdIn0=
Received: from nalramli-fst-tp.. (d4-50-191-215.clv.wideopenwest.com
 [50.4.215.191])
 by nalramli.com (Postfix) with ESMTPSA id 2DD542CE019A;
 Thu, 25 Jun 2026 18:47:46 -0400 (EDT)
From: "Nabil S. Alramli" <dev@nalramli.com>
To: corey@minyard.net
Date: Thu, 25 Jun 2026 18:47:40 -0400
Message-ID: <20260625224741.3632191-1-dev@nalramli.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -4.9 (----)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello ipmi / BMC experts, We have been dealing with certain
 servers where the BMC firmware takes longer than usual to become available.
 We have been able to work around the problem by increasing the BMC retry
 counter GET_DEVIC [...] 
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1wctnt-0005Hy-Gh
X-Mailman-Approved-At: Fri, 26 Jun 2026 03:54:03 +0000
Subject: [Openipmi-developer] [bmc/for-next RFC 0/1] ipmi: Retry BMC 100
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
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:nalramli@fastly.com,m:dev@nalramli.com,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[dev@nalramli.com,openipmi-developer-bounces@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[nalramli.com: no valid DMARC record];
	RECEIVED_HELO_LOCALHOST(0.00)[];
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
X-Rspamd-Queue-Id: B0AB86C9F8C

Hello ipmi / BMC experts,

We have been dealing with certain servers where the BMC firmware takes
longer than usual to become available. We have been able to work around
the problem by increasing the BMC retry counter GET_DEVICE_ID_MAX_RETRY
from 5 to 100. Would you please share some guidance on whether or not this
is a valid approach, and if it would be possible to incorporate in your
next release?

Best Regards,

Nabil S. Alramli (1):
  ipmi: Retry BMC 100 times

 include/linux/ipmi.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
