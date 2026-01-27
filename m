Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4FQ/LMTOeGmNtQEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 27 Jan 2026 15:42:12 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0615895E3A
	for <lists+openipmi-developer@lfdr.de>; Tue, 27 Jan 2026 15:42:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PcaurAl//QlnN21jqvVyEvyleRYB3Wy3JtV40mgBN3Y=; b=MZSY9iB73eSH0TVnee8MMvcIfi
	Tgtnm+on8gKoHJXoI0tct4edr/nkCC6ZukPEjGun6Yppgq+Yu5rM85f5C96rg1D1o5VciDNqvSV04
	y8U7akDvC0XnwLmY4MlK6j+59VE/IXkEmKYJTVOKOsuUslCPnnxzZ8G16gKVUvuZaBDk=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vkkGb-0003qB-8A;
	Tue, 27 Jan 2026 14:42:05 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <leitao@debian.org>) id 1vkkGZ-0003q5-Qg
 for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Jan 2026 14:42:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zsBRO4+fp1yefoYsEvfEeQFyQqvbsFnILehglhch05w=; b=KVKMnEGmLsylEtJhFj/Oq35RLr
 tqgnfVXE6MDfXzKCCcx0PTQEXBWePfeuwJ0c/AK8QqUprqOXjbie9HdHZCOMOMvi9K8hwjqhkCuVF
 wB8/xAwXM+XROEeA7FI/kyjW4rkhaw+gwmxaZWwNzZdP5hSQUWx5w9FI7/l+Rklpyw8E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zsBRO4+fp1yefoYsEvfEeQFyQqvbsFnILehglhch05w=; b=Sml+NjV6voWUnUvzlKTqSiK5lR
 gOzZux3rHFp9nV2oBDphqsWHb+NL6G8HG908Ih9I1CzjwNPgnIzsA0MP9zW24XdI0dxmcys66X44F
 dZV5XlifYmbS1lberE7kK6KekOw6Syr4ys/dDuXa4PW94yPleuOt3VEhf5xtTfJIZASE=;
Received: from stravinsky.debian.org ([82.195.75.108])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vkkGZ-0007cA-CC for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Jan 2026 14:42:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org; 
 s=smtpauto.stravinsky;
 h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=zsBRO4+fp1yefoYsEvfEeQFyQqvbsFnILehglhch05w=; b=K/dNVEaqMpiZ5RPMCkWKJvFxY5
 phfjZHxJbGujYCnFYDe9KQfAcG+6mFeCLqSJfRyAtLA7qhLRlVV5iqgRs4dwpA4KdHyA49CP/RNwZ
 mB/CM7SjBQYGvkJkrJ114gjdaDFTXsfHpHtvx10mF7E0T+EmHR0ACUI6Fs7fjFr7KrMKJ2TUqxKm3
 wVjt+6cPqN0sRBf4AKbzx6ZZ0VjIf8ahiSqLdiBrwfjSkveVngAn8ozLF0W3g+wPKJVXmT06nx/Bz
 tfCzD345/K1d3hl+tUsE9MzgDRTUAm6t9SV12hlTVz+M5oNBB+Jr/ysMoHHr6kVW76+lac7lKlqqp
 usvr3Kpg==;
Received: from authenticated user by stravinsky.debian.org with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94.2) (envelope-from <leitao@debian.org>)
 id 1vkkGP-00H3ke-4M; Tue, 27 Jan 2026 14:41:53 +0000
Date: Tue, 27 Jan 2026 06:41:48 -0800
From: Breno Leitao <leitao@debian.org>
To: Corey Minyard <corey@minyard.net>
Message-ID: <aXjOT9e11GSrMHiy@gmail.com>
References: <20260127-ipmi-v1-0-ba5cc90f516f@debian.org>
 <20260127135917.1597762-1-corey@minyard.net>
 <20260127135917.1597762-3-corey@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260127135917.1597762-3-corey@minyard.net>
X-Debian-User: leitao
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jan 27, 2026 at 07:54:40AM -0600,
 Corey Minyard wrote:
 > It made things hard to read, move the check to a function. > > Signed-off-by:
 Corey Minyard <corey@minyard.net> > --- > drivers/char/ip [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vkkGZ-0007cA-CC
Subject: Re: [Openipmi-developer] [PATCH 2/2] ipmi: Consolidate the run to
 completion checking for xmit msgs lock
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
Cc: kernel-team@meta.com, llvm@lists.linux.dev,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	DMARC_NA(0.00)[debian.org];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:kernel-team@meta.com,m:llvm@lists.linux.dev,m:nick.desaulniers+lkml@gmail.com,m:linux-kernel@vger.kernel.org,m:nathan@kernel.org,m:morbo@google.com,m:justinstitt@google.com,m:openipmi-developer@lists.sourceforge.net,m:nickdesaulniers@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[leitao@debian.org,openipmi-developer-bounces@lists.sourceforge.net];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[meta.com,lists.linux.dev,gmail.com,vger.kernel.org,kernel.org,google.com,lists.sourceforge.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[leitao@debian.org,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,debian.org:s=smtpauto.stravinsky];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,debian.org:-];
	TAGGED_RCPT(0.00)[openipmi-developer,lkml];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[minyard.net:email,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns]
X-Rspamd-Queue-Id: 0615895E3A
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 07:54:40AM -0600, Corey Minyard wrote:
> It made things hard to read, move the check to a function.
> 
> Signed-off-by: Corey Minyard <corey@minyard.net>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 40 ++++++++++++++++-------------
>  1 file changed, 22 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index a590a67294e2..030828cdb778 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -602,6 +602,20 @@ static int __ipmi_bmc_register(struct ipmi_smi *intf,
>  static int __scan_channels(struct ipmi_smi *intf,
>  				struct ipmi_device_id *id, bool rescan);
>  
> +static void ipmi_lock_xmit_msgs(struct ipmi_smi *intf, int run_to_completion,
> +				unsigned long *flags)
> +{
> +	if (!run_to_completion)
> +		spin_lock_irqsave(&intf->xmit_msgs_lock, *flags);
> +}

I usually see the opposite construction in most cases. Something like:

	static void ipmi_lock_xmit_msgs(struct ipmi_smi *intf, int run_to_completion,
					unsigned long *flags)
	{
		if (run_to_completion)
			return;

		spin_lock_irqsave(&intf->xmit_msgs_lock, *flags);
	}

Thanks for doing this, this looks way better!
--breno


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
