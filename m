Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C9DBACF88
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Sep 2025 15:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:References:In-Reply-To:Message-Id:Date:To:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S3Ra4nTEGshW4ErUUKtEt+9Y6x6G+JTzunUQOK9hEug=; b=f6qI8rP8ruUi8lFLBBeM2Mctqe
	vIHMPBfYVVp2Nmb/Do4/T3n8LCtLFJCweQfX4uXKjXtxDdQHwwd3zcKUwwNDJz6VuG4A1tFO9YTNU
	Kwk5hExANMfCr9cgENIbQIF5LpoBZhbslyYvCWpQ2432BeNiwdYNffMAh2hBBvfc331Y=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1v3a3F-0002UY-DY;
	Tue, 30 Sep 2025 13:05:53 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <guojinhui.liam@bytedance.com>) id 1v3V1x-00037o-8o
 for openipmi-developer@lists.sourceforge.net;
 Tue, 30 Sep 2025 07:44:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S+GWBz0oO7f/Lmd1JETTBBhflgvMDIE2U8FWt4CXlOU=; b=MQPIKhxXz9r38oOIbJhEOVxuMT
 otUBkmIfADODrCFAq5VB4Q1MpgPj71XbpLQN5yXS9cwLj8w7pl+XRe1MeIi53yiukGIKuxDKa02MX
 4rVeZrF8kuFPNQrVQTRQ1X6YxdEMq4RmGiNMCD9JuAUxo0Fs/f5oFCrxNWeJjsiyIeQM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=S+GWBz0oO7f/Lmd1JETTBBhflgvMDIE2U8FWt4CXlOU=; b=NJifdUPWayiJVwZQdWpCyptTs0
 SLsn9H1UIaqOQqMv4JpBVVVd7qzAS3+NTh7kpy2cr4rWDzLoJQHZtdHXudTmY/nFyXISiPjADuG+V
 tYTgx7JSvrtN8w8xpRU7GkXDBHyc3Stn5q1DluHlAGQTF3WX05Vk+3nu6ffeMvES5810=;
Received: from mail-pj1-f46.google.com ([209.85.216.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v3V1w-0000p2-O8 for openipmi-developer@lists.sourceforge.net;
 Tue, 30 Sep 2025 07:44:13 +0000
Received: by mail-pj1-f46.google.com with SMTP id
 98e67ed59e1d1-3324523dfb2so5389001a91.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 30 Sep 2025 00:44:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance.com; s=google; t=1759218242; x=1759823042;
 darn=lists.sourceforge.net; 
 h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=S+GWBz0oO7f/Lmd1JETTBBhflgvMDIE2U8FWt4CXlOU=;
 b=K2Q+jeMZ2Ja551IowfWCivo0rggHMqW9cyWsZUulKPlcScqe/FBFWKTq+7vxC4Iwwx
 Ur7Jm7rdap+sGgbSnj7Ki6+cGninheaBElJ6HZt/kNciBsf8qd5bIBGpEONU8NBNam/T
 N4SUmvk69aOdnwsikLTfJ8gao6YQk63s9PEclane+XlQ5iNUhF7CNes9HoYgft86PbU5
 sa4xlrixduAhP/vltCM7OyMl/CKEQtRZVLDDwFGpt0DJJjmYWf8kr56Feqho0y/17Pw0
 z87j33SjJQTtWLCVzTbPiNQ3wO2D0DcXSbE4uq3VtDW5vriIqReHQAub5QndXLmMpbv+
 emyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759218242; x=1759823042;
 h=references:in-reply-to:message-id:date:subject:cc:to:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=S+GWBz0oO7f/Lmd1JETTBBhflgvMDIE2U8FWt4CXlOU=;
 b=RXSPhgF3nCOCPARiLbeQCJbU+Yjmy1bU4rY1fJ5qU0IIXQqMqM8yJ5N6zutxSsmrnm
 /g2fu3HY1OfQvAU8EbeeccXDLSlGRQY01hFdK5uSCEcvltOU8D6ayGIH/idAJkKzs+4R
 mUPERpZ159ITH3Oc0sDp904xRoy9vmVszPy+wvNhDHAsVtF2czk+00ah/fBouYz9P9xX
 tCQX/UJ8LakdZdln0hZd1+VPDD4svftnv35t0uCxLV+807j3iAFKiWbMtfdVtsKScoWj
 jqDgt/+7KhBOwBarwYZpsnBsGOK3OdLUtqdIvJAR1Q/Q30U6ZZfgZRPXIUPMlLkFwO25
 s/BQ==
X-Gm-Message-State: AOJu0YwLdlvzP5p00/G5vyQkvlwvc54UWNhBTkruNWrbEW0mou9EAVQ7
 KQZlZIe7iOUo4jTCN5EP4IQTtXYXyBvkZpk/gR5FUcXU8GcG0KBA+I8V/oarw2dyd3U=
X-Gm-Gg: ASbGncti8f3/oAKlCuyvVZ4BX+/rRnjgPQj6Y4BdXsP7X1QRB0GKLq841VDcFbZKm+O
 HJKRZDUW9hFWkj+jQONcQOaop9p9HjGaqea1XUZc+rT+5OzkTDkWElFXHBw9fX1cCJ84IOqRL+M
 +uLQFqQBzSSLmrUrvxwC9/92O8uNkxo8i9o1Nwc/87qvskEQwXSBbr15OxKHkEDNHCereWrycZE
 ROR5koMryhRsS+pJqzmsQUiLcLEsIGtmuo3M+wtZHfgFluz6kHn6r4Dq49cdrgwNO+PjCiC3dVs
 +2RnQnPxz2eNpPv/lI5WIlvJskjAZQzH8vJqJuU/N7h0w8YLY3FU94aTw+82oB61jDC0sjQXoyS
 kLFVndGW9o8rwFJ8xNwAxsS6IM+LwF32NADRQ9CV7H9gYWE8pQx5I3xfF/5EaeIHAhSmRHMQhg5
 3HIn5qjuSVkwtORkmXz9hcfic=
X-Google-Smtp-Source: AGHT+IFEbpHK7DlmslkbdpJiHFyYSOPszmOBBa9J2pFP03qYZpUo6cclFGnoot3eNpMyiKMXXRLIJQ==
X-Received: by 2002:a17:90b:38c4:b0:338:3cea:6089 with SMTP id
 98e67ed59e1d1-3383cea60d3mr3829629a91.14.1759218241989; 
 Tue, 30 Sep 2025 00:44:01 -0700 (PDT)
Received: from 5CG3510V44-KVS.bytedance.net ([139.177.225.243])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-338386f577bsm3535374a91.2.2025.09.30.00.43.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Sep 2025 00:44:01 -0700 (PDT)
To: corey@minyard.net
Date: Tue, 30 Sep 2025 15:42:39 +0800
Message-Id: <20250930074239.2353-4-guojinhui.liam@bytedance.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250930074239.2353-1-guojinhui.liam@bytedance.com>
References: <20250930074239.2353-1-guojinhui.liam@bytedance.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Channels remain static unless the BMC firmware changes.
 Therefore, 
 rescanning is unnecessary while they are marked ready and no BMC update has
 occurred. Signed-off-by: Jinhui Guo <guojinhui.liam@bytedance.com> ---
 drivers/char/ipmi/ipmi_msghandler.c
 | 4 ++++ 1 file changed, 4 insertions(+) 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.46 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1v3V1w-0000p2-O8
X-Mailman-Approved-At: Tue, 30 Sep 2025 13:05:51 +0000
Subject: [Openipmi-developer] [PATCH v2 3/3] ipmi: Skip channel scan if
 channels are already marked ready
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
From: Jinhui Guo via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Jinhui Guo <guojinhui.liam@bytedance.com>
Cc: openipmi-developer@lists.sourceforge.net, guojinhui.liam@bytedance.com,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Channels remain static unless the BMC firmware changes.
Therefore, rescanning is unnecessary while they are marked
ready and no BMC update has occurred.

Signed-off-by: Jinhui Guo <guojinhui.liam@bytedance.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 536484b8e52d..db8ef2e46488 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -3439,6 +3439,10 @@ static int __scan_channels(struct ipmi_smi *intf,
 		intf->channels_ready = false;
 	}
 
+	/* Skip channel scan if channels are already marked ready */
+	if (intf->channels_ready)
+		return 0;
+
 	if (ipmi_version_major(id) > 1
 			|| (ipmi_version_major(id) == 1
 			    && ipmi_version_minor(id) >= 5)) {
-- 
2.20.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
