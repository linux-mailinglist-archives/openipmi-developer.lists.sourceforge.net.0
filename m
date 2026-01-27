Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBepLIbReGmNtQEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 27 Jan 2026 15:53:58 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC2996123
	for <lists+openipmi-developer@lfdr.de>; Tue, 27 Jan 2026 15:53:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QvjGVsTB46VoBtXmaNHlOZbyIrA9c4MDrBG95BU6Eqo=; b=i061nXfJDsrFGNtyxDt+NYWyHB
	fHkwUHBHTwvBwsJFV68qmUUcy2gf/dMPTCY4bRB0YPTxLyp316m5ephU8nc8SKy09gBCaPuPfnVzy
	vQDEIxG947pDRoM7+ri2o2X0zZ0RLuoKKS+GMs14D81VDIOKw7/klt+OAghPo6tNlwBE=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vkkRw-00049o-Sb;
	Tue, 27 Jan 2026 14:53:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <leitao@debian.org>) id 1vkkRu-00049f-2z
 for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Jan 2026 14:53:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bSxIxNUNI3JZZdzT2oaE//0ff+hEE28hvFGlvh9k1U8=; b=ODu1OYJSk+wHZrGa04fG3jihr9
 23O5Q1k0bin2XJw25Sa74Ns0b7Ratxh0lGbFUCIMA7cf0rnOoo15OqRjaf88ulq5cts/QRgIvWkRw
 RqEcGWDiKgzJGckJLgwkAmtHNtN2RUZ+B7aazTneYCKLXG05cbtcuDHqCCSvQqLaYewA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bSxIxNUNI3JZZdzT2oaE//0ff+hEE28hvFGlvh9k1U8=; b=ER1TSTdOxoYAuKyIzDYN+rM2S4
 fzbx8oJA4B9jbwRmCr+UejxVJMa97Dd08hJs3wkkKVxAsXf+eO+Dq7mgC347x/DeJV2ENgS/8ZBot
 PXo8Ye0XRMIi80xHVNtFV8Hh0Qj+isZRwzOPan8w8mjRdzVovQomZSLEto7IeMDFWZwM=;
Received: from stravinsky.debian.org ([82.195.75.108])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vkkRt-0000Go-Ke for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Jan 2026 14:53:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org; 
 s=smtpauto.stravinsky;
 h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=bSxIxNUNI3JZZdzT2oaE//0ff+hEE28hvFGlvh9k1U8=; b=Wgm5yx5zWXyjQ60KEPVNstvSnk
 Q6fRTc7WIbXIPS7/is7dDaY1iCendtYoYsh/r8XCiMUw66DfQqs6nBgNfqz1+7K+/FdKjqQjbn+d/
 ff7Nswn3bKp+hqudW19VfDpOU8/zlCFhDY74WNw49tW4C7SGa/9uloAfKc8Qq8YbZLCE112TZ8dYG
 vAadYm/TgaLmCO9b73saAsDrwnmk4HRWsMl+/eaZUBKpkHjEcKkkHZPdVbXWxCA/+3PJyFbNkm4a/
 P6WkKeBQ5tGD6ogKaPEeudF1h8ueXsRZN4eji0UivYrWNizdQZl2JZN2hTjG+AKAQLN1tmuOD9gA2
 pIjaAftQ==;
Received: from authenticated user by stravinsky.debian.org with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94.2) (envelope-from <leitao@debian.org>)
 id 1vkkRe-00H46x-9p; Tue, 27 Jan 2026 14:53:30 +0000
Date: Tue, 27 Jan 2026 06:53:26 -0800
From: Breno Leitao <leitao@debian.org>
To: Corey Minyard <corey@minyard.net>
Message-ID: <aXjRS6AoRJtRa1Uq@gmail.com>
References: <20260127-ipmi-v1-0-ba5cc90f516f@debian.org>
 <20260127135917.1597762-1-corey@minyard.net>
 <20260127135917.1597762-3-corey@minyard.net>
 <aXjOT9e11GSrMHiy@gmail.com> <aXjPrnG7ErymtHBx@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aXjPrnG7ErymtHBx@mail.minyard.net>
X-Debian-User: leitao
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jan 27, 2026 at 08:46:06AM -0600,
 Corey Minyard wrote:
 > On Tue, Jan 27, 2026 at 06:41:48AM -0800, Breno Leitao wrote: > > On Tue,
 Jan 27, 2026 at 07:54:40AM -0600, Corey Minyard wrote: > > > [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vkkRt-0000Go-Ke
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
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[debian.org];
	FORGED_SENDER(0.00)[leitao@debian.org,openipmi-developer-bounces@lists.sourceforge.net];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:kernel-team@meta.com,m:llvm@lists.linux.dev,m:nick.desaulniers+lkml@gmail.com,m:linux-kernel@vger.kernel.org,m:nathan@kernel.org,m:morbo@google.com,m:justinstitt@google.com,m:openipmi-developer@lists.sourceforge.net,m:nickdesaulniers@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
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
X-Rspamd-Queue-Id: 0CC2996123
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 08:46:06AM -0600, Corey Minyard wrote:
> On Tue, Jan 27, 2026 at 06:41:48AM -0800, Breno Leitao wrote:
> > On Tue, Jan 27, 2026 at 07:54:40AM -0600, Corey Minyard wrote:
> > > It made things hard to read, move the check to a function.
> > > 
> > > Signed-off-by: Corey Minyard <corey@minyard.net>
> > > ---
> > >  drivers/char/ipmi/ipmi_msghandler.c | 40 ++++++++++++++++-------------
> > >  1 file changed, 22 insertions(+), 18 deletions(-)
> > > 
> > > diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> > > index a590a67294e2..030828cdb778 100644
> > > --- a/drivers/char/ipmi/ipmi_msghandler.c
> > > +++ b/drivers/char/ipmi/ipmi_msghandler.c
> > > @@ -602,6 +602,20 @@ static int __ipmi_bmc_register(struct ipmi_smi *intf,
> > >  static int __scan_channels(struct ipmi_smi *intf,
> > >  				struct ipmi_device_id *id, bool rescan);
> > >  
> > > +static void ipmi_lock_xmit_msgs(struct ipmi_smi *intf, int run_to_completion,
> > > +				unsigned long *flags)
> > > +{
> > > +	if (!run_to_completion)
> > > +		spin_lock_irqsave(&intf->xmit_msgs_lock, *flags);
> > > +}
> > 
> > I usually see the opposite construction in most cases. Something like:
> > 
> > 	static void ipmi_lock_xmit_msgs(struct ipmi_smi *intf, int run_to_completion,
> > 					unsigned long *flags)
> > 	{
> > 		if (run_to_completion)
> > 			return;
> > 
> > 		spin_lock_irqsave(&intf->xmit_msgs_lock, *flags);
> > 	}
> 
> Yes, that's better, I've changed it.

Thanks. feel free to add:

Reviewed-by: Breno Leitao <leitao@debian.org>

Thanks for the quick replies,
--breno


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
