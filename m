Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cN7aJoTL+Gma0wIAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Mon, 04 May 2026 18:38:28 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E099D4C1818
	for <lists+openipmi-developer@lfdr.de>; Mon, 04 May 2026 18:38:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:To:From:Date:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jhBqITE7Ue9OUfOq0es7M7RUTZsnovdXvs3e5ed8zLc=; b=bo7JbFZ++38FDgoG8Atx+3afbu
	TMcbHRA/M2qY0iW3eYG8SAAG41hFIMtwV2t4EGoQQ+LtN5lzTQNb+nxOMpBFva9mvr5SC0d2Cvbbz
	CF3NDbWxF1hehGJ2CpGAQjCMaS275rSS9+RqK8E7D4ATYf0YxqmB8oip6rhBDACjN5jQ=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wJwJH-0002oL-2T;
	Mon, 04 May 2026 16:38:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wJwJF-0002oC-2Z
 for openipmi-developer@lists.sourceforge.net;
 Mon, 04 May 2026 16:38:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QLhuQUVGfIzcremauO/IBvqcZ+GrUIvUGPuxiXhAaoI=; b=GZJQf3bxp9pyxoEr//CRIt8dAR
 s+mHLmbwn2YGxdpp02O/o4b+UOEVgiLO19Sbv2D5mcPYPo2RPzrZnHcoMuXoomgorVDhB7+QUqbK+
 p+J/HmzSstwkxzMzqCLHwfpkPxJg72cWAEwdLo9JMoU0uwL3cW4sG5EMenuMRF/TFMb0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QLhuQUVGfIzcremauO/IBvqcZ+GrUIvUGPuxiXhAaoI=; b=c
 U1vlqgKjLDYdNxitv9zo70lk+tHBfoGv4ugZ4xR5JAVZoP0qnkU1hGncIc5FgI4o+owvg3ToAQIVk
 MVeg0reRszgSzLec8BCE2rOFRzMInX8SDVQ7hJ6LRVs5yt78nx4KoTDHGRPUFGahx+4D/ztJkI9li
 OH1Sc4UdRoIUU11o=;
Received: from mail-ot1-f46.google.com ([209.85.210.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wJwJE-00007H-C5 for openipmi-developer@lists.sourceforge.net;
 Mon, 04 May 2026 16:38:16 +0000
Received: by mail-ot1-f46.google.com with SMTP id
 46e09a7af769-7dca00c1591so1315557a34.3
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 04 May 2026 09:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1777912686; x=1778517486; darn=lists.sourceforge.net;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=QLhuQUVGfIzcremauO/IBvqcZ+GrUIvUGPuxiXhAaoI=;
 b=BYRJk0xym5AkVG+GiE5REIbYuyvreJHzSs+uQ0JIW68qX9UY8IBLYXxcfg6BXEywA9
 DP8rcm1WzjxkxFrsw9IIJXnesRTafDJQ6ZzPAmSe4/EcK4t3yKsVpX6e2y1DHwvDgb+5
 ymZZ8iwH33TJwZu5OwWRb5v30wJjVltvAYvTY9WB+nWPgIB3xO/v+VPeYVpsO6ouraSr
 gWoR057a+KfAabNpCH7gntnUKBpmRQwHDhNQAqc/JejPLgI1hjYmQZS6+OAPMM9Bp1+W
 +SxuIlttQAW9nZdyrQCyq1kQSURfk0sGg7yh0PmB5Q8UY4ZgMdzQZi2+L0cspsOIqoVi
 xJXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777912686; x=1778517486;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=QLhuQUVGfIzcremauO/IBvqcZ+GrUIvUGPuxiXhAaoI=;
 b=OqtvNiaBAQs5qt/mvsTfZgBkU+/CUOkzNtfAepJqTReCwWk6UaiUtc6Ngd8Fe2w19c
 MPAiT1ahOW49Z1fbKkLIlDGuWRgji8Z/PvZINoZ9Hw+4nW/lJXR3tFj8BkzKokewlFSl
 mHbwhPZVghd35wv1iSv/yUShzGGMLAjPeiBFfj4EbgdoXRC+WU/OKGZ11sZzz9pZMAhE
 MvhrKSoeABvNo2E3BNegEO1wGBTacjOP8d8EcPIWENnGqjL4UAmIH5ixc9g4XhAuRapF
 QpWt7kVxjImbbbJc82crIhL+k1YIJmEQ2xz5jqIp8O2GPT4GbY86ch3T2TZzAtSfvy4W
 Zp8Q==
X-Forwarded-Encrypted: i=1;
 AFNElJ8BsffYF+JQAFysAHjr6STPWD7skZsVPztzCI/JgT5DTWCCgRzpelF8DjDSb5dgEun3OZZxqMJ3t8Rrt46AqeAWg8k=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yz74mq9UF6rZRoKknMzUIw+ID4Rwt2x4F1SX4H1ySR9gErzvbsJ
 R4pvkhRfCOTrzpvO/OVMKwNDei7CbmHnsIGeLXkfTowSdfBWOE40VZUzkkqnS8aYKJA=
X-Gm-Gg: AeBDievA9vK20QXbSN79bG3DnAkiScHtfj7Zrfx/pMvUHqnZO7thqpEjvEit9dPnvyI
 v+iLjbwHeTHsBjp+B7oz7iwLEFu8PALwS5ed1oB8VO6CYVoQzkX+ii86OvA2F0N7qB0jVXN1yJ4
 qVH1IwCIco9P4xCBBQfUhsYpPgl6w/poHYv4p7lbgxFHymyfylNl1HV5GoHqzbpaolSK3XWhida
 0QlBeNaBWh+/RPamSF1jf4aD6bAlKatPyhsZ+lmzKuB0JJ2PvbaCzNkP+Y2npScNZP3HXhMZZp+
 qiHQsVyEhalAju4JHMCFjzxvCuPKt1JTzff6KNJxy/VPqU74g8lEHD2GkI20gwRxAQot0kp3p6y
 8KwKZi+JmWy7+q7Fus3G0AnwgGHCBVAqfxYIjET2XfhIRIu8qFEALlBmMu/By30ZPAzpVwNbA2u
 xUx/ZlDVjKakT2/AgwQBfQK+OQ6d9XnVL1ZmEdk+zi6ozjeC1XHMekFHPcYdEV5RgV+pCA0Kk7B
 ZIfkE90lIwFLUVupOxDaPrWFg==
X-Received: by 2002:a4a:e909:0:b0:696:1c59:8864 with SMTP id
 006d021491bc7-69697a04e0bmr4936307eaf.8.1777912685669; 
 Mon, 04 May 2026 09:38:05 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:8805:43a5:499c:65e9])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-434548c1151sm10834218fac.2.2026.05.04.09.38.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2026 09:38:04 -0700 (PDT)
Date: Mon, 4 May 2026 11:38:00 -0500
From: Corey Minyard <corey@minyard.net>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <afjLaFYA9-gb2qdN@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  openipmi-developer@lists.sourceforge.net,
 Matt Fleming <mfleming@cloudflare.com>
 Bcc: Subject: [GIT PULL] IPMI bug fixes for 7.1 Reply-To: corey@minyard.net
 The following changes since commit a5d1079c28a5bc6caa30ef4099ef04ed17d2c6aa:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.46 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1wJwJE-00007H-C5
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 7.1
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
Cc: openipmi-developer@lists.sourceforge.net,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Matt Fleming <mfleming@cloudflare.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: E099D4C1818
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:torvalds@linux-foundation.org,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,m:mfleming@cloudflare.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.minyard.net:mid,minyard.net:email,cloudflare.com:email]

openipmi-developer@lists.sourceforge.net, Matt Fleming <mfleming@cloudflare.com>
Bcc: 
Subject: [GIT PULL] IPMI bug fixes for 7.1
Reply-To: corey@minyard.net

The following changes since commit a5d1079c28a5bc6caa30ef4099ef04ed17d2c6aa:

  Merge tag 'ntfs3_for_7.1' of https://github.com/Paragon-Software-Group/linux-ntfs3 (2026-04-20 10:59:47 -0700)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-7.1-2

for you to fetch changes up to a8aebe93a4938c0ca1941eeaae821738f869be3d:

  ipmi:ssif: NULL thread on error (2026-04-28 12:59:15 -0500)

----------------------------------------------------------------
IPMI: Fix a number of issues that came up recently

The first two fixes are workarounds for buggy IPMI hardware.  The
hardware says it has data for the IPMI driver to read constantly, so the
driver reads the data constantly, causing any new requests to be
blocked.

The first fix was to check for invalid data right when the data was read
from the device and stop the operation there (there was a later check
for invalid data, but it could not stop the operation at that point).
It turned out the device was providing good data, so that didn't fix the
issue, but it's still a good check.

The second fix stops fetching this data after a few fetches and allows
other operations to occur.  The driver won't work very well, but at
least it won't wedge.  This seems to fix the issue.

The third issue is a problem I spotted while working on the previous
issue where if a certain memory allocation failed the driver would stop
working.

The fourth issue is a problem was a missing set to NULL on a PTR_ERR()
return, introduced in the previous series for 7.1.

----------------------------------------------------------------
Corey Minyard (4):
      ipmi: Check event message buffer response for bad data
      ipmi: Add limits to event and receive message requests
      ipmi:si: Return state to normal if message allocation fails
      ipmi:ssif: NULL thread on error

 drivers/char/ipmi/ipmi_si_intf.c | 70 ++++++++++++++++++++++++++++++++--------
 drivers/char/ipmi/ipmi_ssif.c    | 24 ++++++++++++--
 2 files changed, 78 insertions(+), 16 deletions(-)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
