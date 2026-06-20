Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VnACObveNmoOFwcAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Sat, 20 Jun 2026 20:40:59 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 725876A97C8
	for <lists+openipmi-developer@lfdr.de>; Sat, 20 Jun 2026 20:40:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=fOtYiqyd;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=OCk1FLVX;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=aEi5eEuo;
	dkim=fail ("body hash did not verify") header.d=infradead.org header.s=bombadil.20210309 header.b=yOYjAXtM;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=infradead.org (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:From:References:To:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Sm9XZucGYL+uB6C1HxdjqatE6/Tcib+OCQyunFeVaLE=; b=fOtYiqydXBdLalh1bKbsMP2/To
	a+V4VE174ZAi38A+qzwaaguSlvZ/ZsCNPg5FxWWti3ENks55TSc+ZZWuZFYGoSLH1I6sHE6Tzr8Rb
	KS97iZv32Pb+sWvaD69rYdBvBBNu4QO7WtLKVo7OxPGf6p6/Dxi1CGFtfPxe9BS1+PZk=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wb0cd-0003Ph-2A;
	Sat, 20 Jun 2026 18:40:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rdunlap@infradead.org>) id 1wb0cb-0003Pa-DQ
 for openipmi-developer@lists.sourceforge.net;
 Sat, 20 Jun 2026 18:40:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lF91LOryZhh9Xbnlao0wR5FYAQfbHc7j4pr9N+nyMk8=; b=OCk1FLVXKSr4B27rrxTYIAmg5M
 Vkw85ao9aZ/BEsZyTkqBhiVkFs9UqSAi86t4gCx8/yw6GuL1PmV95ql7Y2js5ww12ZS7zGJ34uUiT
 hM8RXZgpChJEpR7Mr42HruhUFkp6g3zY+kweZ5WYjoPzrT6BuhLwLnU+NNJ202EmWI/Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lF91LOryZhh9Xbnlao0wR5FYAQfbHc7j4pr9N+nyMk8=; b=aEi5eEuouZQsUA0OCCHK9S3oNu
 a0hEusQ5Wl37zaPvkeOjqEp00w6FB5VpkakPQzRDn6gxtmeZDpOcYp+M9toCLBOSM8J6atZpU+hpp
 bXVWcpiGaBEeEGLc2aKmXXSAaEuviYXx21KByRreVcpHSUZ6fghv5hdixWlAfvE21KTw=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wb0cX-0008Oo-Kv for openipmi-developer@lists.sourceforge.net;
 Sat, 20 Jun 2026 18:40:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=lF91LOryZhh9Xbnlao0wR5FYAQfbHc7j4pr9N+nyMk8=; b=yOYjAXtMGYVQWk4we9CyvduKi2
 oed/dqL5xd+1AI/uU5hz6klED6dWMSLYh6AaKGeM25jLsMF7LtVD9PraB2Z6+xPdMTiGcrdms43I1
 1FJRh5s/Jov8kkAzdrD3FVLhTJmctvCbKDOMWZzoOPs8NPmbOMUEaHY/8MS6Lq1Fkwa1g8jU81ia5
 UY6YRIV5Z/w+TuUGocFORYNXc0YxWyeUeO6qRU2OkSvMhjYY3hKTz8l+dVuVYYF1M7FJ2F4tKQobY
 i0pUlVnywo+zG5x2CVrLs1aOjr9dv3Xda3ervxJpvKfTHAiPCnfgmndOx8F4gXwkDojfF8JUFmvCj
 O77u0nqA==;
Received: from [50.53.43.113] (helo=[192.168.254.34])
 by bombadil.infradead.org with esmtpsa (Exim 4.99.1 #2 (Red Hat Linux))
 id 1wb0cL-00000003VFx-3del; Sat, 20 Jun 2026 18:40:33 +0000
Message-ID: <626477f6-8bda-4cac-8341-c720fd279ba3@infradead.org>
Date: Sat, 20 Jun 2026 11:40:32 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Zenghui Yu <zenghui.yu@linux.dev>,
 openipmi-developer@lists.sourceforge.net, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260620122747.7902-1-zenghui.yu@linux.dev>
Content-Language: en-US
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20260620122747.7902-1-zenghui.yu@linux.dev>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 6/20/26 5:27 AM, Zenghui Yu wrote: > The correct path
 of the "hotmod" module parameter should be >
 /sys/module/ipmi_si/parameters/hotmod.
 Fix it. > > Signed-off-by: Zenghui Yu <zenghui.yu@linux.dev [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1wb0cX-0008Oo-Kv
Subject: Re: [Openipmi-developer] [PATCH] docs: ipmi: Fix path of the
 "hotmod" module parameter
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
Cc: corey@minyard.net, skhan@linuxfoundation.org, corbet@lwn.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[infradead.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[rdunlap@infradead.org,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,infradead.org:s=bombadil.20210309];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:zenghui.yu@linux.dev,m:openipmi-developer@lists.sourceforge.net,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:corey@minyard.net,m:skhan@linuxfoundation.org,m:corbet@lwn.net,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rdunlap@infradead.org,openipmi-developer-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,infradead.org:-];
	RCPT_COUNT_SEVEN(0.00)[7];
	TAGGED_RCPT(0.00)[openipmi-developer];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 725876A97C8



On 6/20/26 5:27 AM, Zenghui Yu wrote:
> The correct path of the "hotmod" module parameter should be
> /sys/module/ipmi_si/parameters/hotmod. Fix it.
> 
> Signed-off-by: Zenghui Yu <zenghui.yu@linux.dev>
> ---
>  Documentation/driver-api/ipmi.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

There are several other places that use /sys/modules/ instead of
/sys/module/.

Would you care to fix those also?

thanks.
-- 
~Randy



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
