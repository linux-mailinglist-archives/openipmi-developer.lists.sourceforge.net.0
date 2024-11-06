Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BACBD9BF233
	for <lists+openipmi-developer@lfdr.de>; Wed,  6 Nov 2024 16:50:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1t8iId-0003rq-93;
	Wed, 06 Nov 2024 15:50:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1t8iIb-0003rk-Oe
 for openipmi-developer@lists.sourceforge.net;
 Wed, 06 Nov 2024 15:50:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E3CfkUvmHBfftI7nEjPqKAga3mFEVe00QCXyDqUTKB0=; b=FmMUjGLoBiMctGheQH6htLtdLA
 O/RV51kYwJ36aZcGMX9MR4KuILzLDMDXwz7L3NSz3ws84Zo4zbe75TzT7TK6CUV+pCSShTFzs3Cl2
 RkcWMulQryNP/fMC3wKEFqHVMrwElCl75wkBtXt0oLth/cFPHcGB+N5FLn8M7byJKorE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=E3CfkUvmHBfftI7nEjPqKAga3mFEVe00QCXyDqUTKB0=; b=ehD1FHmXueYP4hfujmJfIGVXog
 drje1VFcK/mu+uNFChsvTUeh0zHbZWZ8+OKdOLYO7CnY1Dh+UttQeO9Miumz8FgRB5zLOXFhZukHm
 g8F7uAjSiN0aHqZH2a62mRLodtYseW7LBGMM5h1uKR7eB9cymVQaDiiDWcxbc5YvexXw=;
Received: from mail-io1-f50.google.com ([209.85.166.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1t8iIb-0000VA-35 for openipmi-developer@lists.sourceforge.net;
 Wed, 06 Nov 2024 15:50:25 +0000
Received: by mail-io1-f50.google.com with SMTP id
 ca18e2360f4ac-83a9cd37a11so263132339f.3
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 06 Nov 2024 07:50:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1730908212; x=1731513012;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=E3CfkUvmHBfftI7nEjPqKAga3mFEVe00QCXyDqUTKB0=;
 b=GVfJQWwI529nvljVy2NP+SrIGANEA/mAWfLzmDJ3iDf0si9T82biP3Rrpj984a2K3m
 z48aPoxhDN2NYjdMFEDrNq16Z1kksOt9+K231eZNTBADr8kKHqorSoQimHGVM1MRbwsv
 9n4x/bsQNSFaX3bv7LyvayOAUvfXFxWphluASM3iOZ9n2nzk6vgFphN0EFomFuNml7yN
 6YYim1gVwJ+DYYVAHKZ0L4v9FOLHLICzLhPIHlApFv0mYDyjjCa5aLb/k90WZSHI23Ob
 VBWOgS0iDsYrv3cMu9ogT25eHg0SuXtmt/KMXSAn547pYQAjAM/8X0JeOtDFkluRnFPU
 XVuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730908212; x=1731513012;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=E3CfkUvmHBfftI7nEjPqKAga3mFEVe00QCXyDqUTKB0=;
 b=grrk3oU2d/gDECb5UhIGiK7Bi3OMbMrzYYs/vhtaWYFVdd9/MI079fXDjUcFMXk2D5
 +5GGgReYOXHQBB+yTBbGtHlk6fbKhCD2YnSgsra09mVCWgz54PU/1witE+DC5o4gX1w5
 85pLjKZ4LFZ/MchMViesI+kr9+gz0h0AYnvBtv2ExCeJoauCwAlOvU7jhrlBUejnqfbO
 6EybsdPiZixGQq4Ks7lJfcsWSL/azdTJXbiVBFU1O16rN6GztP6wHAkGWc9C5KsSnV3f
 7JeCUxnc14LUc5I8T+DIhyAUVE3Va0EGruJEtLdCsaw7Dssl/p0RMDNaygDvxQqlS9ey
 /bfQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVyTyRVoDC8MQ+JgGLjyA5lictRjIM5CuvUNOEaOgom30Hxo7H4DCGY2HmGm1ATBS47QXLPQ9xZLdrhSRvq5+ofuiY=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzW/tv93ZwGEE+7SH8hCa/MyiNYOUS8WLYQe4BhnxTCrpPI0FjM
 d0YwyzYjn772BVJrgNvZ+X0uCqkUwilyWZ/rc4Va6u8OJ2KlCH4Z2Zto9z4pP4y5dPORxAo0ty9
 H7jo=
X-Google-Smtp-Source: AGHT+IHJyz2ZD0Tulkl1wbaFPR6j+E+IbS6Z1fX733mFNactan83QAKY3E30AHJnO4HLitxjcG4Z5Q==
X-Received: by 2002:a05:6808:178d:b0:3e5:df4b:bf4f with SMTP id
 5614622812f47-3e63845b56bmr39868716b6e.24.1730898017172; 
 Wed, 06 Nov 2024 05:00:17 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:f7a1:2561:134f:bca6])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-3e75b5b9201sm2429660b6e.13.2024.11.06.05.00.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2024 05:00:15 -0800 (PST)
Date: Wed, 6 Nov 2024 07:00:08 -0600
From: Corey Minyard <corey@minyard.net>
To: liujing <liujing@cmss.chinamobile.com>
Message-ID: <ZytoWGTQ4fn9KpV2@mail.minyard.net>
References: <20241106111458.2157-1-liujing@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241106111458.2157-1-liujing@cmss.chinamobile.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Nov 06, 2024 at 07:14:58PM +0800, liujing wrote: >
 Because the types of io.regsize and io.regspacing in the ipmipci_probe
 function
 are unsigned int, > they should be output in the %u format. I reformatted
 the above text to fit into 80 characters, but this is right, I've applied
 it. Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.50 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.50 listed in list.dnswl.org]
X-Headers-End: 1t8iIb-0000VA-35
Subject: Re: [Openipmi-developer] [PATCH] char:ipmi: Fix the wrong format
 specifier
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
Reply-To: corey@minyard.net
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 minyard@acm.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Nov 06, 2024 at 07:14:58PM +0800, liujing wrote:
> Because the types of io.regsize and io.regspacing in the ipmipci_probe function are unsigned int,
> they should be output in the %u format.

I reformatted the above text to fit into 80 characters, but this is
right, I've applied it.

-corey

> 
> Signed-off-by: liujing <liujing@cmss.chinamobile.com>
> 
> diff --git a/drivers/char/ipmi/ipmi_si_pci.c b/drivers/char/ipmi/ipmi_si_pci.c
> index b83d55685b22..8c0ea637aba0 100644
> --- a/drivers/char/ipmi/ipmi_si_pci.c
> +++ b/drivers/char/ipmi/ipmi_si_pci.c
> @@ -118,7 +118,7 @@ static int ipmi_pci_probe(struct pci_dev *pdev,
>  	if (io.irq)
>  		io.irq_setup = ipmi_std_irq_setup;
>  
> -	dev_info(&pdev->dev, "%pR regsize %d spacing %d irq %d\n",
> +	dev_info(&pdev->dev, "%pR regsize %u spacing %u irq %d\n",
>  		 &pdev->resource[0], io.regsize, io.regspacing, io.irq);
>  
>  	return ipmi_si_add_smi(&io);
> -- 
> 2.27.0
> 
> 
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
