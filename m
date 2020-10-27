Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BB51129CAE0
	for <lists+openipmi-developer@lfdr.de>; Tue, 27 Oct 2020 22:03:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kXW8H-0006W5-Pn; Tue, 27 Oct 2020 21:03:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1kXW8G-0006Vg-54
 for openipmi-developer@lists.sourceforge.net; Tue, 27 Oct 2020 21:03:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MyXnLNK7IOSxObjzQjXARof4MBzCtf4uf+5fQC51Ucw=; b=kbwncImxVQDosBRSgsVtfLgUyi
 pUXHIebvgeTaOLXMDmZwu2VxBGKi01BfnlEwwThdgNsO3FhyjUB7F2ARoXmM9AS3avds2aEqqahXs
 9qj+iwX/SYbCHRpwZ2QkjwvH7mGOa2r5xgRHvKuDqkmOTnsavyPF9j36Iil0T7xVgPAs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MyXnLNK7IOSxObjzQjXARof4MBzCtf4uf+5fQC51Ucw=; b=YPuMTElNX6Dl2pbM6/dDbTSetA
 3N9LYL/iWgzdhEkFiai/avJyy29uuKF5gXrAo/yuzQOijaXrSo47icmualykqDsU3bxuuKiIpnJ1+
 3/hpq9ornf4xjVmWD8J2XOAUaOCwoRSZj4oSbyrhJKj4qi+ZRfHnGc7TU17Ji71+BufQ=;
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kXW8B-009Gsl-5B
 for openipmi-developer@lists.sourceforge.net; Tue, 27 Oct 2020 21:03:52 +0000
Received: by mail-ot1-f67.google.com with SMTP id j21so2383616ota.13
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 27 Oct 2020 14:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=MyXnLNK7IOSxObjzQjXARof4MBzCtf4uf+5fQC51Ucw=;
 b=GWel6yja3p+9z+KCAVSsJgJmSeR1JJxG1us8ner92OwbrbM95UF8FY4hkTK4+3zc05
 8yBgsV1Kwh6N2kM/5//Rv6J1OfUoVtpRdQMs5CGOcZ7lz7n5D/iFZOVJ0TDgnOlLBOpJ
 dq4CrbHpMsWcIMykNA8UhhLIl4z0k2iH6iuwbgmmpwdftCLdy5qzGHsJYJtbMN2re0L3
 kbWhjTxFNTcvanBPwog3jnsjze059t9DMxtvJaEvthckGXeA5o1UE1N12e6zs3oLxGOT
 avJU82PCgOqGaJv4M/A9O3UIFcEKLOrdkwf/z1pCPK3LLDIS0zPQsCjvPOj1sSIrXuuY
 OzDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=MyXnLNK7IOSxObjzQjXARof4MBzCtf4uf+5fQC51Ucw=;
 b=NovK4KhkvWL/tIqPVPRXkLPNMwU4oRuzhzWFTP0hfuxsEndU8JeVVdGwQgLA/RYni/
 PMMmCrQjruEU6yX/c25V1sAzZuukGWMFqQhvnRED3j3cKnQbkRIcLBn9A3RgtM9/b6KD
 QXIBCO5GZeX0A6eG5rm+Es6v5N8x3SEqEn0iDgkTzw5vWgh5iUL+DvamfuVit1yRNSkd
 lfLPJRlyyD0jCAaS+caVl3gDBIZanbwsTdnvhDqSUM1ANDpdQkKbyhxifd689lvt37Q4
 iqt4ePI9bYiXcGgv2JcPPXCD9w5qy/ZiqwflCU9jKERvZ9MSx2X1N3ngUI70R68d75T9
 RtNw==
X-Gm-Message-State: AOAM530IvdQF1reJhrHuhxejFMyu0jTn5sjn33aEhaPEE5Ak71L4cLMf
 Qok1IU2Dm7Pktwf1vaSpsQ==
X-Google-Smtp-Source: ABdhPJyrxZFjiKl/XgpHR9IC8xJJVucOKnZXP66h8IzWX8JSD8jbuPaOSmEeMZvzmE8uaGPwd1dusw==
X-Received: by 2002:a9d:649:: with SMTP id 67mr2966814otn.233.1603832621269;
 Tue, 27 Oct 2020 14:03:41 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id m13sm1460502otn.20.2020.10.27.14.03.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Oct 2020 14:03:40 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:64b8:c481:9aa8:415f])
 by serve.minyard.net (Postfix) with ESMTPSA id EA5B8180057;
 Tue, 27 Oct 2020 21:03:38 +0000 (UTC)
Date: Tue, 27 Oct 2020 16:03:37 -0500
From: Corey Minyard <minyard@acm.org>
To: Tian Tao <tiantao6@hisilicon.com>
Message-ID: <20201027210337.GM4296@minyard.net>
References: <1602898810-31783-1-git-send-email-tiantao6@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1602898810-31783-1-git-send-email-tiantao6@hisilicon.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: hisilicon.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1kXW8B-009Gsl-5B
Subject: Re: [Openipmi-developer] [PATCH] ipmi_si: replace spin_lock_irqsave
 by spin_lock in hard IRQ
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
Cc: gregkh@linuxfoundation.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, arnd@arndb.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Sat, Oct 17, 2020 at 09:40:10AM +0800, Tian Tao wrote:
> It is redundant to do irqsave and irqrestore in hardIRQ context.

Are ACPI GPEs run in hardirq context?  I looked around a bit and
couldn't tell.  If not, then I can't take this patch.  Otherwise, it's
ok.

-corey

> 
> Signed-off-by: Tian Tao <tiantao6@hisilicon.com>
> ---
>  drivers/char/ipmi/ipmi_si_intf.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
> index 45546ac..97452a8 100644
> --- a/drivers/char/ipmi/ipmi_si_intf.c
> +++ b/drivers/char/ipmi/ipmi_si_intf.c
> @@ -1116,7 +1116,6 @@ static void smi_timeout(struct timer_list *t)
>  irqreturn_t ipmi_si_irq_handler(int irq, void *data)
>  {
>  	struct smi_info *smi_info = data;
> -	unsigned long   flags;
>  
>  	if (smi_info->io.si_type == SI_BT)
>  		/* We need to clear the IRQ flag for the BT interface. */
> @@ -1124,14 +1123,14 @@ irqreturn_t ipmi_si_irq_handler(int irq, void *data)
>  				     IPMI_BT_INTMASK_CLEAR_IRQ_BIT
>  				     | IPMI_BT_INTMASK_ENABLE_IRQ_BIT);
>  
> -	spin_lock_irqsave(&(smi_info->si_lock), flags);
> +	spin_lock(&(smi_info->si_lock));
>  
>  	smi_inc_stat(smi_info, interrupts);
>  
>  	debug_timestamp("Interrupt");
>  
>  	smi_event_handler(smi_info, 0);
> -	spin_unlock_irqrestore(&(smi_info->si_lock), flags);
> +	spin_unlock(&(smi_info->si_lock));
>  	return IRQ_HANDLED;
>  }
>  
> -- 
> 2.7.4
> 
> 
> 
> _______________________________________________
> Openipmi-developer mailing list
> Openipmi-developer@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/openipmi-developer


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
