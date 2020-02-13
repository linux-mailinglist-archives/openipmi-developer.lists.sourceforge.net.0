Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB9715BEE3
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 Feb 2020 14:02:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1j2E8O-0005jX-Hu; Thu, 13 Feb 2020 13:02:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1j2E8M-0005jL-0z
 for openipmi-developer@lists.sourceforge.net; Thu, 13 Feb 2020 13:02:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A+3wMprKg+igdVYsZNJ9ivwdJoPZAYkyawyyUa/pO6U=; b=KPs5QcPQAr9m7Tl35KhEwEFg/I
 oNBOQB4RFAWRayaNJ1skRKShNxCZQdlbvH4sG0gPnbAzndhiGb2ZiKnEiR+oT5AHbGJUex5gMj50D
 Wic0guKNk80LYYwPh30dEQjTnH/iRus8S1yt8CvKl2ZX5W67hhH11rwu826MfGtQ5k9Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=A+3wMprKg+igdVYsZNJ9ivwdJoPZAYkyawyyUa/pO6U=; b=eadc0fFa5FUHUJ7O6zcI+Efwjy
 UXis2F0ayo92cl61VVj7dBFhSsIp/lJxq8r2B6tUFH4ZzrYhBK1Tnu4rdgYVl/+fkvsw/KmCnkWoU
 XUQT0wK6QsM1x5Za0ouEqevXWs1JNwAAf40rklLgkxB6PihJJrLzj8oA0aAf3Bl3kjYc=;
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1j2E8K-0035rd-H4
 for openipmi-developer@lists.sourceforge.net; Thu, 13 Feb 2020 13:02:21 +0000
Received: by mail-oi1-f193.google.com with SMTP id j132so5641013oih.9
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 13 Feb 2020 05:02:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=A+3wMprKg+igdVYsZNJ9ivwdJoPZAYkyawyyUa/pO6U=;
 b=mXg8YSs4G/ZfxUwU2MzESrELoc+GOj54Yjqj0o9bWPuTpsGqP3bg0P1R61bGKmq0/r
 F8mbUrvydomYreQ7W0fdCyBcIQuQ8c0bzwyd/IbJgzqrFBBJbVbfLQ1f1ETkPJ9U6ERl
 fDlFSOTUqJkBEpbilzoFGFnc8GblsaCicldNoB+kxrRbG99Kk3h5IDl56BA8h2eUKIy9
 TDG3wFcEs23nZFmSe4YTNAzmpiiN/Un9c/6e1bfIKWCq1FkiBNaYBgxrhOe+tbjGF/DI
 GhX9fv+ye12i++omcqU/fwu+wxoOv20L9NGNUQC1xOQVpOTZBUL1fiKOApUqHqvzpRk2
 TgLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=A+3wMprKg+igdVYsZNJ9ivwdJoPZAYkyawyyUa/pO6U=;
 b=QGCApjc6blnSqEYxlIQC0uekTF3lvOB35Z6yG2mXdwdP6s1/2jQHzxjuoY00ONZnMD
 1wf23oZONktFZOD0p6klVdLpl8KfkV1kzJiOeddqHJqiIMn5R/L7AIpyH1bQyUXrWmB+
 IUYxjKPDX6LEn8r8F2r1/w7T4d5OBttWWY/+WSR0gfLyt/Dk0mfgnACQ7rdULuqLhZpC
 +Hzo7NG4NYS9m/4fM52Vit38xNlmWZrqSFzbgc9lu5TnzDFlywX6F24KOJkISE89OaHM
 1xN3SdUqu71fgAUaYfM2vXd8HUYiyzc57N4noIrxANEnTNdqNkr6YWG/kT7F2A8tCmcO
 2oFw==
X-Gm-Message-State: APjAAAW+sNOm7WVxm7KUnmXi1qWTC3Qj3Xe9ojNgEzw7y8U8amFecGjy
 bXOWofUzHmZ54zgfB2ByXw==
X-Google-Smtp-Source: APXvYqyXRG2Era0fflTDvw+Wf1os+YHhKgV6rKFYPeyZGsSJt9hh3qOzNfDIEVzeN5yM3UaLJpF+UQ==
X-Received: by 2002:aca:db43:: with SMTP id s64mr2674666oig.144.1581598934487; 
 Thu, 13 Feb 2020 05:02:14 -0800 (PST)
Received: from serve.minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id p65sm665303oif.47.2020.02.13.05.02.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 05:02:14 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:e166:6491:dd75:4196])
 by serve.minyard.net (Postfix) with ESMTPSA id 4A5B0180053;
 Thu, 13 Feb 2020 13:02:13 +0000 (UTC)
Date: Thu, 13 Feb 2020 07:02:12 -0600
From: Corey Minyard <minyard@acm.org>
To: Takashi Iwai <tiwai@suse.de>
Message-ID: <20200213130212.GP7842@minyard.net>
References: <20200205093146.1352-1-tiwai@suse.de>
 <s5hpneiyjgb.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <s5hpneiyjgb.wl-tiwai@suse.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.de]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j2E8K-0035rd-H4
Subject: Re: [Openipmi-developer] [PATCH] ipmi_si: Avoid spurious errors for
 optional IRQs
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
Reply-To: minyard@acm.org
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Patrick Vo <patrick.vo@hpe.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Feb 13, 2020 at 09:34:12AM +0100, Takashi Iwai wrote:
> On Wed, 05 Feb 2020 10:31:46 +0100,
> Takashi Iwai wrote:
> > 
> > Although the IRQ assignment in ipmi_si driver is optional,
> > platform_get_irq() spews error messages unnecessarily:
> >   ipmi_si dmi-ipmi-si.0: IRQ index 0 not found
> > 
> > Fix this by switching to platform_get_irq_optional().
> > 
> > Fixes: 7723f4c5ecdb ("driver core: platform: Add an error message to platform_get_irq*()")
> > Reported-and-tested-by: Patrick Vo <patrick.vo@hpe.com>
> > Signed-off-by: Takashi Iwai <tiwai@suse.de>
> 
> Any review / ack on this?

Sorry, lost in the noise.  I've included this for 5.7.  If you want it
earlier, I can arrange that.

Thanks,

-corey

> 
> 
> thanks,
> 
> Takashi
> 
> > ---
> >  drivers/char/ipmi/ipmi_si_platform.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/char/ipmi/ipmi_si_platform.c b/drivers/char/ipmi/ipmi_si_platform.c
> > index c78127ccbc0d..638c693e17ad 100644
> > --- a/drivers/char/ipmi/ipmi_si_platform.c
> > +++ b/drivers/char/ipmi/ipmi_si_platform.c
> > @@ -194,7 +194,7 @@ static int platform_ipmi_probe(struct platform_device *pdev)
> >  	else
> >  		io.slave_addr = slave_addr;
> >  
> > -	io.irq = platform_get_irq(pdev, 0);
> > +	io.irq = platform_get_irq_optional(pdev, 0);
> >  	if (io.irq > 0)
> >  		io.irq_setup = ipmi_std_irq_setup;
> >  	else
> > @@ -378,7 +378,7 @@ static int acpi_ipmi_probe(struct platform_device *pdev)
> >  		io.irq = tmp;
> >  		io.irq_setup = acpi_gpe_irq_setup;
> >  	} else {
> > -		int irq = platform_get_irq(pdev, 0);
> > +		int irq = platform_get_irq_optional(pdev, 0);
> >  
> >  		if (irq > 0) {
> >  			io.irq = irq;
> > -- 
> > 2.16.4
> > 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
