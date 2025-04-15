Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BBADDA89CC4
	for <lists+openipmi-developer@lfdr.de>; Tue, 15 Apr 2025 13:46:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u4ekL-0001EF-Jo;
	Tue, 15 Apr 2025 11:46:34 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u4ekC-0001Dw-6r
 for openipmi-developer@lists.sourceforge.net;
 Tue, 15 Apr 2025 11:46:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sdC+ybos8o0ITBqE7ZOhXVTr+xRo3uW3qXJPs1bo0DU=; b=GXD7a0t6AoeIrqWbaCCQ5qepJ8
 nk42P6WC7LMK70niCjgWjgtn/yiAtCuMaS8vkAuh/lywRdnj9DzcEpOSiEXBhIEgW+lLTo3K916jX
 ZytZ9WeU7NVNONflJ/xIiX2i00B+E0qUWtnSjqsH98b2w3XnD/Pmy8+aUR2MHuAFUqwE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sdC+ybos8o0ITBqE7ZOhXVTr+xRo3uW3qXJPs1bo0DU=; b=TfSXRB27u5T5qHDoutv/xgV4kv
 x9jE1wYdD6W7KIEvvUXjh55MVdhu7JGUbvnoaDVkZ8RFUSyH+NFJbPskgs+QUzKmlDCQStWrORC3w
 u/PmIldS6LSl2pw8RyZb3uGB0BnQJgQ3rFTztCDzIulX5hOLKPcHDjzIDebWV34zxMiI=;
Received: from mail-oa1-f44.google.com ([209.85.160.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u4ejv-0004Hi-I8 for openipmi-developer@lists.sourceforge.net;
 Tue, 15 Apr 2025 11:46:24 +0000
Received: by mail-oa1-f44.google.com with SMTP id
 586e51a60fabf-2c759bf1b2eso2901425fac.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 15 Apr 2025 04:46:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1744717562; x=1745322362;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sdC+ybos8o0ITBqE7ZOhXVTr+xRo3uW3qXJPs1bo0DU=;
 b=WFS3/CfIALI+kMNu332s/eFzshaUpsq8Ioqi85LEJEKKtjsewg4g+eVqyOlE+0NPVE
 Jb3t2LyhdgQmCwBQN6Z9EWSZf65ajlfiAcLWzTJk0qHR75Nu9hWm+YNSOr33cjeSy1mT
 02hPUbJ/DuCaHwWkyW4d45T3Ohm6PJTG7ER97ohtiRB5utkL7TO3noVkBwneyMDEvpYR
 hlh6sL8BTHvcNkBimCPE7Am+zTWzPq0eB9ZF6EZ4ZwcB7tys8+tq1cwTJ+4Z5CnzWC5s
 mZ2z+qulX6ZVlFP7vokYwYVY7gIoWqyQtawF24jQUHRoiXf4n8+HQsKDtZCaZE28lCQG
 SWNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744717562; x=1745322362;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=sdC+ybos8o0ITBqE7ZOhXVTr+xRo3uW3qXJPs1bo0DU=;
 b=Ex99Tp8s2nN3jqfm5DRCilXlpNg4uOLMw49aSSLRn751RwijYmuo3WL60mvhORK9Ar
 aQPvHbW6lMvdGPRMjvQNStPik2WuSPKkibZs9Ph4UUZkEt23ZZ34lpN971OUBWgeQjEh
 au4E4SDFK3EQOpmcdglzo4dlcbtJIfvu3p1MdOXFki5gToJKUvit8Z2lFZI3a55q/Yxx
 K06lePPU2PBrsWHPDCAW4Igqngh1634/Riz5iMycjqVAs2/gloGG4cQkJf/sCqlKf49y
 vghxBo8w38QV907EovQaPE2+rM1+Cg1VC15xuPvx8MYQSNQsqdUwxNsPL9XCXqNG4/zs
 pjvw==
X-Gm-Message-State: AOJu0Yw5Nyo5Qww1PI3xCR24NQyiBzh+3pEzstaFXJl5QKb3n16lh6H2
 JBi3cpixCHC/MqhHm05mHtQh/sDFcxjYBhuQPMMZXB3kTa4VNMHJQ6KoiAox1mYNvTdubAjPVrH
 K
X-Gm-Gg: ASbGncsNfybZHJE8+DwfhytFZ0/wopiFoZYNi11+s/vnNr8XErfB9R8bQ3RxPWsC7uj
 99IQ/ybVOxiIP8hDnAaT22KSOfC7NcV66w9wGFu+5sLNUNuCCW/MM94zvcbx1luqSIm1O7XnNwc
 IIyngexHyRzYKKWXhiQ3Np52CmhQxDVWlvJFccfudfiM270Be20SLgF1ZDhc+4fvDRJ0bBEc7oX
 PTE0D36e3LI+BkNCW0t3ZMkzA3BSDMd52nqRl/hcnFLxPQsAHVGDrr+sYmt9Cbm7v99MNkblG4s
 vB+PSOQ9AmBS/ueTU+AO+zd3SVVeq6ZgdXxQa6Wqqj3z
X-Google-Smtp-Source: AGHT+IEWPVoxhxIvxVHdnqC7V9/omUZ3FlFGZ3fwPxEPX6EqBcnW2Xm7wlYDSJKTdcPaMOSX3JLTkg==
X-Received: by 2002:a05:6820:99b:b0:604:d2b:c585 with SMTP id
 006d021491bc7-6046f587ad1mr9852773eaf.3.1744717150155; 
 Tue, 15 Apr 2025 04:39:10 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:2b95:bd83:8713:77cf])
 by smtp.gmail.com with ESMTPSA id
 006d021491bc7-6045f53776esm2340926eaf.22.2025.04.15.04.39.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Apr 2025 04:39:08 -0700 (PDT)
Date: Tue, 15 Apr 2025 06:39:03 -0500
From: Corey Minyard <corey@minyard.net>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <Z_5FV65cyIwiI9rs@mail.minyard.net>
References: <20250415085156.446430-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250415085156.446430-1-andriy.shevchenko@linux.intel.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Apr 15, 2025 at 11:51:56AM +0300, Andy Shevchenko
 wrote: > Debian clang version 19.1.7 is not happy when compiled with > `make
 W=1` (note, CONFIG_WERROR=y is the default): > > ipmi_si_platform [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.44 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.160.44 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.160.44 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.44 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1u4ejv-0004Hi-I8
Subject: Re: [Openipmi-developer] [PATCH v1 1/1] ipmi: si: Cast to smaller
 integer type without warning
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
Cc: Justin Stitt <justinstitt@google.com>, llvm@lists.linux.dev,
 linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
 Bill Wendling <morbo@google.com>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Apr 15, 2025 at 11:51:56AM +0300, Andy Shevchenko wrote:
> Debian clang version 19.1.7 is not happy when compiled with
> `make W=1` (note, CONFIG_WERROR=y is the default):
> 
> ipmi_si_platform.c:268:15: error: cast to smaller integer type 'enum si_type' from 'const void *' [-Werror,-Wvoid-pointer-to-enum-cast]
>   268 |         io.si_type      = (enum si_type)device_get_match_data(&pdev->dev);
> 
> Fix this by intermediate cast to the uintptr_t, that makes compiler happy.

Unless things have changed recently, Linus prefers "unsigned long" per
https://patchwork.kernel.org/project/linux-hardening/patch/20220616143617.449094-1-Jason@zx2c4.com/#24899749

And it would match what is in the match table.

Is that change ok?

-corey

> 
> Fixes: 5be50eb5ae99 ("ipmi: si: Use device_get_match_data()")
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/char/ipmi/ipmi_si_platform.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_si_platform.c b/drivers/char/ipmi/ipmi_si_platform.c
> index 550cabd43ae6..47d3cbeb3fa0 100644
> --- a/drivers/char/ipmi/ipmi_si_platform.c
> +++ b/drivers/char/ipmi/ipmi_si_platform.c
> @@ -265,7 +265,7 @@ static int of_ipmi_probe(struct platform_device *pdev)
>  	}
>  
>  	memset(&io, 0, sizeof(io));
> -	io.si_type	= (enum si_type)device_get_match_data(&pdev->dev);
> +	io.si_type	= (enum si_type)(uintptr_t)device_get_match_data(&pdev->dev);
>  	io.addr_source	= SI_DEVICETREE;
>  	io.irq_setup	= ipmi_std_irq_setup;
>  
> -- 
> 2.47.2
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
