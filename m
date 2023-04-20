Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 23FAC6E93D1
	for <lists+openipmi-developer@lfdr.de>; Thu, 20 Apr 2023 14:11:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ppT84-0003RT-IP;
	Thu, 20 Apr 2023 12:11:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1ppT81-0003RN-9z
 for openipmi-developer@lists.sourceforge.net;
 Thu, 20 Apr 2023 12:11:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q1LxyGqG5WL9KaWkh2+hx1G34IN6yuPWN+Fhp92J1jU=; b=XlHAXI4fGC6LVsBScuaH7RISWI
 mbgBAPvn12zBl52iCoOLBUK4skG67IylKA6W5R+sG8jS1cBh9EXLTJXhBs2fhebQjvMxkEdvz/l21
 3fKL8lFR4HgIcJ7Mwr5B1zVfceTvGj1SYEsRR9WjKj2Cz88LzYRsUo4ggjgzgWKZJSkM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Q1LxyGqG5WL9KaWkh2+hx1G34IN6yuPWN+Fhp92J1jU=; b=RQ9hJGF4kkN41eaxj/VWWi+uUQ
 s+EQVQpHpxji6ODIX9kWcqdAAfnhwpSwe49uV3kZZ/gKRmqhhpDqODY+lCJpd+BoHob0214t/hyBv
 P/XTiFX/aRpzC/y5mdLy0/26yz/kAy/eGoAkzoUJ1LBuVPB30BZ/MRbBQG5VE6CAG5+I=;
Received: from mail-qk1-f170.google.com ([209.85.222.170])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ppT7z-00DWxO-Mx for openipmi-developer@lists.sourceforge.net;
 Thu, 20 Apr 2023 12:11:08 +0000
Received: by mail-qk1-f170.google.com with SMTP id
 af79cd13be357-74ab718c344so152514985a.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 20 Apr 2023 05:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1681992662; x=1684584662;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Q1LxyGqG5WL9KaWkh2+hx1G34IN6yuPWN+Fhp92J1jU=;
 b=cTJefAavuwEJMjxkP+0FJDK3FU5t0pFA/baHq7/CmHy65JmN7YNzl9jvNl5LvW3L4x
 OQdTQ26zgzvvHsB+MZi8aOpANQpN3DtBE1EuVo68DnYjkp9fUlROl3FCbLedV6R3FRFp
 NlX83jBxJnLmpsCkSgrApq8ib+WNe5GoHNlZ2BSjkR++2eWWrUlws0tfNEWn79TyXDsQ
 ovHsNFOtSlEUNCklfiIftrxzbIwByHeI7vlTqJLSyHhT0We5KeQGQKYQiiDWghEXsa/p
 mEGLNeF/Cw4UyKjErsrje0/sybjqovhKCszdLDltHj3SGkoqxDvAfCvB49zrrEJYrQZO
 YgrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681992662; x=1684584662;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=Q1LxyGqG5WL9KaWkh2+hx1G34IN6yuPWN+Fhp92J1jU=;
 b=Ejo4Vvg4Si3lx6mYuKuxEdz6j0vQDWBK7uUIkso5RDrBPHs3my7z/hQHJvxEg7exB3
 WqjTnHXFkfOScUT7aCCVhUQ8cQwCP+ZJu5SO++lD9uf/MRphmhM4nqM1Iv0+Xt+gwo7Y
 pBVteNk/GkX5zCQhdK4eWoxvVc2OWGkdauBzlGIdtLjP4hwR+sZxO+kQuW1hlnDscznr
 l1aTkISw16OwcTufsjWB+NTUIHhdmn+VeV6HVD0NWoeLZB6ZcMd8D/fHbc14de1nM5vW
 EW64G6AO0+FjAM18h0rp+m+iMCIBmY80iThBUQYi8NTlEzJnIEugNJIHyr0p6tNZRjxj
 CrYQ==
X-Gm-Message-State: AAQBX9cNrK0GhAG8MvoW27Zk5Mio5zO7HW6waM1M4kT11vVtO6brUwyz
 8mKECF8sVcMWXxZZiVB4UB7rjCrLpQ==
X-Google-Smtp-Source: AKy350aU+AhiGvWT2mOUumNh9NQQKESPC9pzdG1xi3NmMoT7bYT1AMbxetODVE0RwWxqXoOIEYgjpA==
X-Received: by 2002:a05:622a:1a18:b0:3ef:3008:bf with SMTP id
 f24-20020a05622a1a1800b003ef300800bfmr1925477qtb.9.1681992661750; 
 Thu, 20 Apr 2023 05:11:01 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 z28-20020ac87cbc000000b003e388264753sm435619qtv.65.2023.04.20.05.11.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Apr 2023 05:11:00 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:12f9:9c2e:cc67:fe3b])
 by serve.minyard.net (Postfix) with ESMTPSA id A196B180044;
 Thu, 20 Apr 2023 12:10:59 +0000 (UTC)
Date: Thu, 20 Apr 2023 07:10:58 -0500
From: Corey Minyard <minyard@acm.org>
To: Andrew Jeffery <andrew@aj.id.au>,
 Govert Overgaauw <govert.overgaauw@prodrive-technologies.com>
Message-ID: <ZEEr0r/6/lLiwlsy@minyard.net>
References: <20230419150032.3483229-1-govert.overgaauw@prodrive-technologies.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230419150032.3483229-1-govert.overgaauw@prodrive-technologies.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Andrew, what do you think? -corey On Wed, Apr 19, 2023 at
 05:00:32PM +0200, Govert Overgaauw via Openipmi-developer wrote: > While the
 KCS driver is not in KCS_PHASE_WAIT_READ state it returns > -EINVAL to
 userspace on a write call. c [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.170 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.170 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1ppT7z-00DWxO-Mx
Subject: Re: [Openipmi-developer] [PATCH] ipmi: ipmi-bmc: Improve errno
 returned to userspace
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Andrew, what do you think?

-corey

On Wed, Apr 19, 2023 at 05:00:32PM +0200, Govert Overgaauw via Openipmi-developer wrote:
> While the KCS driver is not in KCS_PHASE_WAIT_READ state it returns
> -EINVAL to userspace on a write call. change this to -EAGAIN to indicate
> that the error is related to the state and not the argument.
> 
> Signed-off-by: Govert Overgaauw <govert.overgaauw@prodrive-technologies.com>
> ---
>  drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
> index cf670e891966..4c7400faf333 100644
> --- a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
> +++ b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
> @@ -405,7 +405,7 @@ static ssize_t kcs_bmc_ipmi_write(struct file *filp, const char __user *buf,
>  		kcs_bmc_write_data(priv->client.dev, priv->data_out[0]);
>  		ret = count;
>  	} else {
> -		ret = -EINVAL;
> +		ret = -EAGAIN;
>  	}
>  	spin_unlock_irq(&priv->lock);
>  
> -- 
> 2.30.2
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
