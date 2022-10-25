Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E42FC60CB37
	for <lists+openipmi-developer@lfdr.de>; Tue, 25 Oct 2022 13:46:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1onIO5-0000f8-Ee;
	Tue, 25 Oct 2022 11:46:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1onIO4-0000f1-89
 for openipmi-developer@lists.sourceforge.net;
 Tue, 25 Oct 2022 11:46:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UkOLSjtDBaYH15rz5kr5Th8k/YFVwMAjgA02jyFP02I=; b=gj76xfAnMeEw9AJfU2iMWkK3oG
 EIJmHF+RpVmP60fJIvf3hfF4stQJ9tGHIZYGZUbUmYY82yJdZh34u60ZyAsO7uzA4nfLzGEkhX+kK
 rek0xhQE0IwofaVnBDI5xAgrM8b8ZkPYDNt87v/XN8gMnVYftiN8z3y8ppVezXcxE4wM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UkOLSjtDBaYH15rz5kr5Th8k/YFVwMAjgA02jyFP02I=; b=RZnruWLWc4mR22JnBB6coS0VXs
 8HEzXyba8YgTKDkIbSlRDtLsDOhP/xaSC7eYV4haLlKPlH5Cl5PNTDRWCDnrbhEM3206HNIN7vmfJ
 ti/p51tNrbKXZU0GhPhM3AznoR+CAM26a1yrEkMmvXJhdTv/UQVquBUdizQmwnl1IDSw=;
Received: from mail-il1-f176.google.com ([209.85.166.176])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1onINz-00GyP4-CR for openipmi-developer@lists.sourceforge.net;
 Tue, 25 Oct 2022 11:46:28 +0000
Received: by mail-il1-f176.google.com with SMTP id 7so3692121ilg.11
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 25 Oct 2022 04:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=UkOLSjtDBaYH15rz5kr5Th8k/YFVwMAjgA02jyFP02I=;
 b=oxdotC+Q6HeQ/gfub29oYzM2uRkrTGZ65p0JdzarAedpX3XXnRTVjLR5Lz9JXGBhUK
 LsWA6V0mj7L2GNJyhHbbEL0q26Ee5hepMoPayZYEDVSLpmR2SAq35pF9Qa4y/FGY/rEi
 NoPioE87BupjsFKxu103qAN2gqT79poKBUjHsYjLM1fuvPXhaAYFU3k/p6Ob8bkMI0g2
 c97nfwX4WZKf5Rg6tgRXu9P8Lxn1tdKObVckDcOx3e0PC++YQkfHTPjjI0Z2SEP727qO
 R/ixNcwqARHveJamR1iyMcvP9qgycEStuwiXA8O/fLI3krsdQvnpxdo0EOfGfVCj5P82
 5KkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=UkOLSjtDBaYH15rz5kr5Th8k/YFVwMAjgA02jyFP02I=;
 b=tpUWSKO912CXuR40ZjAwoDWmBJY4/lPEM5n3q81LPRkt95m+tq337GdGBIItJQQsf1
 iIy0mI4TY2aLjZ5AOW0naI7B/JYpTuej7Cr++31Y9FbHJmZTj6IpOi4WIQ50Rh79NNZa
 MYhHcI38ShszfnymVupx+8T9NM5gmbKZRUWEB4ZkMpyJiPlOKEa0c4g+Fk5hMCL1Mxvw
 Z6C4RirHc/uOcVVkYNyPdWDvWGPa+m621NhijjCh1bafQI8IW2rrJYfR0BcZlqcNoqcO
 O20u6nVP0R92uIddss6KFtMwHcVDepBFpYd3ktcgxSyHn4fCdr2ZnLz3teFc/trXdC66
 Ixag==
X-Gm-Message-State: ACrzQf0aTZ3el3QjiwUYOVvPvSA83wSlK4ew7fkvWvJd8OIMhscyGTnB
 Q4V+dtKqZ6WNgd1UF1MFzPwj9Oup8Q==
X-Google-Smtp-Source: AMsMyM63nZa4MNVDtyt1Q2lLYsKgeVQZK2niHUMonnWUtKnY4E2tohjZXP7bEylvukx2k0QxVe7fvg==
X-Received: by 2002:a92:2c0f:0:b0:2ff:e0ad:f548 with SMTP id
 t15-20020a922c0f000000b002ffe0adf548mr6282101ile.84.1666698377617; 
 Tue, 25 Oct 2022 04:46:17 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 a95-20020a029468000000b00363bd76184esm809606jai.162.2022.10.25.04.46.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Oct 2022 04:46:16 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:8fea:c04d:3e8:da78])
 by serve.minyard.net (Postfix) with ESMTPSA id 7A1781800BD;
 Tue, 25 Oct 2022 11:46:15 +0000 (UTC)
Date: Tue, 25 Oct 2022 06:46:14 -0500
From: Corey Minyard <minyard@acm.org>
To: Bo Liu <liubo03@inspur.com>
Message-ID: <Y1fMhj8ozX1WqQ2t@minyard.net>
References: <20221025060436.4372-1-liubo03@inspur.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221025060436.4372-1-liubo03@inspur.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Oct 25, 2022 at 02:04:36AM -0400, Bo Liu wrote: >
 The current code provokes some kernel-doc warnings: >
 drivers/char/ipmi/ipmi_msghandler.c:618:
 warning: This comment starts with '/**', but is [...] 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.176 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.176 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1onINz-00GyP4-CR
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Fix some kernel-doc warnings
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

On Tue, Oct 25, 2022 at 02:04:36AM -0400, Bo Liu wrote:
> The current code provokes some kernel-doc warnings:
> 	drivers/char/ipmi/ipmi_msghandler.c:618: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst

Thanks, this is in my for-next tree.

-corey

> 
> Signed-off-by: Bo Liu <liubo03@inspur.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index d5ee52be176d..f6b8ca6df9b5 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -614,7 +614,7 @@ static int __ipmi_bmc_register(struct ipmi_smi *intf,
>  static int __scan_channels(struct ipmi_smi *intf, struct ipmi_device_id *id);
>  
>  
> -/**
> +/*
>   * The driver model view of the IPMI messaging driver.
>   */
>  static struct platform_driver ipmidriver = {
> -- 
> 2.27.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
