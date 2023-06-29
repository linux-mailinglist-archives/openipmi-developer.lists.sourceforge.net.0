Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 515697426F8
	for <lists+openipmi-developer@lfdr.de>; Thu, 29 Jun 2023 15:07:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qErNH-0000MN-7I;
	Thu, 29 Jun 2023 13:07:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1qErND-0000M9-SJ
 for openipmi-developer@lists.sourceforge.net;
 Thu, 29 Jun 2023 13:07:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wPSxkQ87Wj6qniPEz0gaxOYEsfrmKpTYI5B1z/x1Q/E=; b=eMkuL0tFO/BH8YwW3NArHNEQV2
 p65FFpMVX9sGDatUba2YhnGS+BExMwMQvsYR8ZKUYy6M05mZnTlYLgbp5BPPV+2OJmwEyUNtHSN1D
 /1/drPsFxNTs8HBDAS8hAeBtJvyC8wOsgjFQqb5PlxoLCYWlbuxrKDNiIg+CKIgLoLf0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wPSxkQ87Wj6qniPEz0gaxOYEsfrmKpTYI5B1z/x1Q/E=; b=NrpMu+2DCYvl7I1aOOq9oVEmHj
 I/3dh26whHFspcPIUlwBZW0DTKMgTZRKqPyPzkQNLkjg/Hcunubr5G0pnkjE8wtHJMowH7i1ottmD
 HAJ3K+XllyB4qf9Oes4MVHN1nuab704cVURqm5PwYzkA9j58LhCpY8zuaemwNadW9u/c=;
Received: from mail-yw1-f172.google.com ([209.85.128.172])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qErNA-00169a-EB for openipmi-developer@lists.sourceforge.net;
 Thu, 29 Jun 2023 13:07:46 +0000
Received: by mail-yw1-f172.google.com with SMTP id
 00721157ae682-5701810884aso6445357b3.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 29 Jun 2023 06:07:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1688044058; x=1690636058;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wPSxkQ87Wj6qniPEz0gaxOYEsfrmKpTYI5B1z/x1Q/E=;
 b=pRt8FyE0SHlF09fUC9ODK2Vr6aEhF/P0G//O4CcWe7G7LojqTyZWFjBO8X2Wb7AT6U
 j6+aPz0s/M2bojNmAvy8Ed66XhCejVbSZOuaCDdD0s3EoHDiJn4nxrvLDsfbJxVrASTj
 S5uDe0AfRfELn/YR4YTXSQl4CUqrOqxG+TI7TX1pDelAgUfaP81Di8JZPpY9+Ug6RTkG
 sK1uinoNp4bVLPBPzsxvSSAIxFA4gxMtWBUSuFbRz4OxgenaoL3PbjUvKyGwXN4XQn36
 ZhplCx2/KcBmUOSikviEw10MhIZnb9E1B6YMTWuK62lWwsx4ZyA3gEo6cNhLmzfhGhnT
 cqfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688044058; x=1690636058;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=wPSxkQ87Wj6qniPEz0gaxOYEsfrmKpTYI5B1z/x1Q/E=;
 b=E2iCte1suo5q3RP6q+zlJbns5aA9iLR1ZF7oDGmqHnO0CG8Q3MI91bmYN7sMoT9eEm
 6/yIByKoV6v9EP3IRJllWXDvLR0o+AZ8RjXo/BowAzQq+TuSn7IQJWhpDN/qyqz8BrK9
 JEFkJMtCbfu52kG0UJgSUFiEcC69uXvVqxmJHPgtYwT1XsX7Kh+xICu9vVJka/qH3eRp
 ewt/QicL+feAuu+RjrJ8IX1wZ3KcE43vm//S5K6/L7aJhHoQR+h7JM+pkUnFxImkQRhD
 mmRIBQf+hioGG7sBcjqdRDlG0R0EvNRlgqKPQqoaNaGPLjw2VXx2LJo/nIWqCpfwlU1R
 wtkw==
X-Gm-Message-State: AC+VfDwog+G7jJqh8m0uhtV2W2O85bC2A0dO311+jlmPP/NaFIhzhhgB
 Ue6l/l6AUyb8w80KfK7oBQ==
X-Google-Smtp-Source: ACHHUZ54T815K5oIlgXBu7Fku65efK/HxXSIeluhK4sRy7j7+hmNGzHsx7+ZAukAbz641fT7BgoaVw==
X-Received: by 2002:a0d:ea52:0:b0:56d:34:893c with SMTP id
 t79-20020a0dea52000000b0056d0034893cmr28070174ywe.4.1688044058502; 
 Thu, 29 Jun 2023 06:07:38 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 d186-20020a8168c3000000b00577139f85dfsm637868ywc.22.2023.06.29.06.07.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Jun 2023 06:07:37 -0700 (PDT)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:91d3:5aa:3c41:6715])
 by serve.minyard.net (Postfix) with ESMTPSA id 06203180044;
 Thu, 29 Jun 2023 13:07:36 +0000 (UTC)
Date: Thu, 29 Jun 2023 08:07:34 -0500
From: Corey Minyard <minyard@acm.org>
To: "GONG, Ruiqi" <gongruiqi@huaweicloud.com>
Message-ID: <ZJ2CFthVKdr0U29K@mail.minyard.net>
References: <20230629123328.2402075-1-gongruiqi@huaweicloud.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230629123328.2402075-1-gongruiqi@huaweicloud.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jun 29, 2023 at 08:33:28PM +0800, GONG, Ruiqi wrote:
 > From: Yi Yang <yiyang13@huawei.com> > > Kmemleak reported the following
 leak info in try_smi_init(): > > unreferenced object 0xffff00018e [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.172 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.172 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1qErNA-00169a-EB
Subject: Re: [Openipmi-developer] [PATCH] ipmi_si: fix a memleak in
 try_smi_init()
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
Cc: Yi Yang <yiyang13@huawei.com>, Xiu Jianfeng <xiujianfeng@huawei.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Wang Weiyang <wangweiyang2@huawei.com>, gongruiqi1@huawei.com,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Jun 29, 2023 at 08:33:28PM +0800, GONG, Ruiqi wrote:
> From: Yi Yang <yiyang13@huawei.com>
> 
> Kmemleak reported the following leak info in try_smi_init():
> 
> unreferenced object 0xffff00018ecf9400 (size 1024):
>   comm "modprobe", pid 2707763, jiffies 4300851415 (age 773.308s)
>   backtrace:
>     [<000000004ca5b312>] __kmalloc+0x4b8/0x7b0
>     [<00000000953b1072>] try_smi_init+0x148/0x5dc [ipmi_si]
>     [<000000006460d325>] 0xffff800081b10148
>     [<0000000039206ea5>] do_one_initcall+0x64/0x2a4
>     [<00000000601399ce>] do_init_module+0x50/0x300
>     [<000000003c12ba3c>] load_module+0x7a8/0x9e0
>     [<00000000c246fffe>] __se_sys_init_module+0x104/0x180
>     [<00000000eea99093>] __arm64_sys_init_module+0x24/0x30
>     [<0000000021b1ef87>] el0_svc_common.constprop.0+0x94/0x250
>     [<0000000070f4f8b7>] do_el0_svc+0x48/0xe0
>     [<000000005a05337f>] el0_svc+0x24/0x3c
>     [<000000005eb248d6>] el0_sync_handler+0x160/0x164
>     [<0000000030a59039>] el0_sync+0x160/0x180
> 
> The problem was that when an error occurred before handlers registration
> and after allocating `new_smi->si_sm`, the variable wouldn't be freed in
> the error handling afterwards since `shutdown_smi()` hadn't been
> registered yet. Fix it by adding a `kfree()` in the error handling path
> in `try_smi_init()`.

Thanks, I have included this.  And thanks for handling the stable thing,
too.

-corey

> 
> Cc: stable@vger.kernel.org # 4.19+
> Fixes: 7960f18a5647 ("ipmi_si: Convert over to a shutdown handler")
> Signed-off-by: Yi Yang <yiyang13@huawei.com>
> Co-developed-by: GONG, Ruiqi <gongruiqi@huaweicloud.com>
> Signed-off-by: GONG, Ruiqi <gongruiqi@huaweicloud.com>
> ---
>  drivers/char/ipmi/ipmi_si_intf.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
> index abddd7e43a9a..5cd031f3fc97 100644
> --- a/drivers/char/ipmi/ipmi_si_intf.c
> +++ b/drivers/char/ipmi/ipmi_si_intf.c
> @@ -2082,6 +2082,11 @@ static int try_smi_init(struct smi_info *new_smi)
>  		new_smi->io.io_cleanup = NULL;
>  	}
>  
> +	if (rv && new_smi->si_sm) {
> +		kfree(new_smi->si_sm);
> +		new_smi->si_sm = NULL;
> +	}
> +
>  	return rv;
>  }
>  
> -- 
> 2.25.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
