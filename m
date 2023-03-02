Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B246A8B95
	for <lists+openipmi-developer@lfdr.de>; Thu,  2 Mar 2023 23:18:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pXrFY-0005l1-Ci;
	Thu, 02 Mar 2023 22:18:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1pXrFX-0005ku-Oo
 for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Mar 2023 22:18:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V0eFa8ILkm7saCjWoXNnQHqm1RHUvtu7xtFURhRmKWU=; b=fSlXhov8TlR7pJQwAEdMtKs+Lc
 myqSxKEjFzvrXLRv/RhmTNDlEkxMRZDf435UiXGq9nwpnSS4E1a02ynp7+7Y2U9bPsNKUGkqgaDRO
 SY54j+3HziC18k7mIIrcjt7qNB877XAXJlBADLQRfV1jJg6iiPGwEW+zqtbikiDhN9yU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=V0eFa8ILkm7saCjWoXNnQHqm1RHUvtu7xtFURhRmKWU=; b=aLZMkY4r/4hZmmzuGK3wr3mAUf
 4S1Hv2OTJSZEOSdWHm9ztzLhCI4Q8krsrsz37BPE/01Lm+WKdhHjDGbx5lxX+h++KKo/KblHCRSFM
 ShLijNFZtC8Obs03QrZN6FfUhBLDdZAYL53fQZXPYLJkfxUH41T5txH1X9doVfcRb+a4=;
Received: from mail-qt1-f174.google.com ([209.85.160.174])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pXrFS-00EFAB-SN for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Mar 2023 22:18:06 +0000
Received: by mail-qt1-f174.google.com with SMTP id y10so992643qtj.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 02 Mar 2023 14:18:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1677795477;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=V0eFa8ILkm7saCjWoXNnQHqm1RHUvtu7xtFURhRmKWU=;
 b=GWIdVRbSbgGAneugFpQgdh5lGR+K1O2RColDxiylPsGvgbxgTi3suTXXA6wFi8OCK0
 VNr55Ah0Gc82W4FpWSTsMpjDZ1Erp/WmIRnZDS0YpniCm5SeKBzDA3FCJ8OcngRfT3am
 LJR4Wv1lndNYH/Q/fwVcsuZerou4gr/yo1YSLP0kQcvMrmf2NmdjcDnwIAjLduXqmPNe
 VlNJuhUG6Jamo98Ukf3GRQnXMF/KhWX9aS1xIH9/YtXknnp6o/3S59Xtp1bxusSnAubi
 fOjhj1lJxSPeHuAjqExElFjdtMpPl+2YjDqfLqGQB/n6i2Ayg1FV3OBABQqVd1q1TZM5
 StNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1677795477;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=V0eFa8ILkm7saCjWoXNnQHqm1RHUvtu7xtFURhRmKWU=;
 b=KO2HPNYYmp1hI+tUqWayWzIMSa9lKdLeNF34oJuPcA5fZ+JWFqDXAA0IlT60qFnfBR
 ERLzre7tit/SCle5gWCkimvI2ZP59q3576V7810+lAifg3daFwT1wVmvHzgSHn1iiM9Q
 azjD1309v+LOKjPr/HHBTHJE+lAo49F55EV36LErVt0xd2bQBiide6m4LmLydn9PJSYO
 EiSFnmu1sf+CuF3cR2loyHZUkUU945bO8vy0f5+nrs2kBvxFUWe+3gofC52DKdVitw1I
 M/NggaQPL0lsqCr3bjy+yhNhNjdRNIYrlxKok9egwk/dHJfx+H+VpdcDooKC/ELu5rZE
 R/rw==
X-Gm-Message-State: AO0yUKXHYD7heTvKvBuLAcfj6EexooqOsVJspNaNsB1W8WT6GFVrrLWv
 BeE9h5TKP0H2Ki5P3bnxOg==
X-Google-Smtp-Source: AK7set/y+bOjExP+nvbPQ/5QcDoAS99DJhG2vCN39iU8gau82df1z2MZqb9gk8YkNPi+sskmliPrlQ==
X-Received: by 2002:ac8:5f47:0:b0:3bf:dd45:ed68 with SMTP id
 y7-20020ac85f47000000b003bfdd45ed68mr19008132qta.47.1677795476934; 
 Thu, 02 Mar 2023 14:17:56 -0800 (PST)
Received: from serve.minyard.net ([47.184.176.248])
 by smtp.gmail.com with ESMTPSA id
 w19-20020ac843d3000000b003bfbf3afe51sm468742qtn.93.2023.03.02.14.17.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Mar 2023 14:17:56 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:9812:99fe:c8aa:e89a])
 by serve.minyard.net (Postfix) with ESMTPSA id 2843A18000C;
 Thu,  2 Mar 2023 22:17:55 +0000 (UTC)
Date: Thu, 2 Mar 2023 16:17:53 -0600
From: Corey Minyard <minyard@acm.org>
To: Luis Chamberlain <mcgrof@kernel.org>
Message-ID: <ZAEgkeb6E+k8PFZc@minyard.net>
References: <20230302204612.782387-1-mcgrof@kernel.org>
 <20230302204612.782387-3-mcgrof@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230302204612.782387-3-mcgrof@kernel.org>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Mar 02, 2023 at 12:46:07PM -0800, Luis Chamberlain
 wrote: > register_sysctl_table() is a deprecated compatibility wrapper. >
 register_sysctl() can do the directory creation for you so just use [...]
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.174 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.174 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1pXrFS-00EFAB-SN
Subject: Re: [Openipmi-developer] [PATCH 2/7] ipmi: simplify sysctl
 registration
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
Cc: j.granados@samsung.com, linux-hyperv@vger.kernel.org, steve.wahl@hpe.com,
 patches@lists.linux.dev, song@kernel.org, kys@microsoft.com,
 jirislaby@kernel.org, wei.liu@kernel.org, sstabellini@kernel.org,
 linux-scsi@vger.kernel.org, decui@microsoft.com, willy@infradead.org,
 zhangpeng362@huawei.com, xen-devel@lists.xenproject.org, yzaikin@google.com,
 haiyangz@microsoft.com, keescook@chromium.org, arnd@arndb.de,
 mike.travis@hpe.com, jejb@linux.ibm.com, apparmor@lists.ubuntu.com,
 linux-raid@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 nixiaoming@huawei.com, jgross@suse.com, martin.petersen@oracle.com,
 sujiaxun@uniontech.com, gregkh@linuxfoundation.org, robinmholt@gmail.com,
 linux-kernel@vger.kernel.org, oleksandr_tyshchenko@epam.com,
 ebiederm@xmission.com, tangmeng@uniontech.com, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Mar 02, 2023 at 12:46:07PM -0800, Luis Chamberlain wrote:
> register_sysctl_table() is a deprecated compatibility wrapper.
> register_sysctl() can do the directory creation for you so just use
> that.

Thanks, I have included this in my tree for the next merge window.

-corey

> 
> Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>
> ---
>  drivers/char/ipmi/ipmi_poweroff.c | 16 +---------------
>  1 file changed, 1 insertion(+), 15 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_poweroff.c b/drivers/char/ipmi/ipmi_poweroff.c
> index 163ec9749e55..870659d91db2 100644
> --- a/drivers/char/ipmi/ipmi_poweroff.c
> +++ b/drivers/char/ipmi/ipmi_poweroff.c
> @@ -659,20 +659,6 @@ static struct ctl_table ipmi_table[] = {
>  	{ }
>  };
>  
> -static struct ctl_table ipmi_dir_table[] = {
> -	{ .procname	= "ipmi",
> -	  .mode		= 0555,
> -	  .child	= ipmi_table },
> -	{ }
> -};
> -
> -static struct ctl_table ipmi_root_table[] = {
> -	{ .procname	= "dev",
> -	  .mode		= 0555,
> -	  .child	= ipmi_dir_table },
> -	{ }
> -};
> -
>  static struct ctl_table_header *ipmi_table_header;
>  #endif /* CONFIG_PROC_FS */
>  
> @@ -689,7 +675,7 @@ static int __init ipmi_poweroff_init(void)
>  		pr_info("Power cycle is enabled\n");
>  
>  #ifdef CONFIG_PROC_FS
> -	ipmi_table_header = register_sysctl_table(ipmi_root_table);
> +	ipmi_table_header = register_sysctl("dev/ipmi", ipmi_table);
>  	if (!ipmi_table_header) {
>  		pr_err("Unable to register powercycle sysctl\n");
>  		rv = -ENOMEM;
> -- 
> 2.39.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
