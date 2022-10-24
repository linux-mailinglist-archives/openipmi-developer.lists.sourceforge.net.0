Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A7F60AD44
	for <lists+openipmi-developer@lfdr.de>; Mon, 24 Oct 2022 16:21:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1omyK4-0002Q3-2M;
	Mon, 24 Oct 2022 14:21:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1omyK2-0002Pr-Po
 for openipmi-developer@lists.sourceforge.net;
 Mon, 24 Oct 2022 14:20:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=snHhLpRnzMiuF/FkUzYYR4DW/a0NGNwApchz9Ej8VRU=; b=JMQGDofybgQQyi+Lnhg7Sz/Edf
 FrNmkx9kb0vsXzcqByjsNsNyTYFyW05NVTjMj8I9sexVy64TcK1YwCBxmaBFUtKtFUqdRp6XNXrD4
 Pbv9z5577DJN8fNI5w7sUnAhVfwMkyPpKvOti84QatUJdt6lhzXfOsjaJyoC5lcMQMs0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=snHhLpRnzMiuF/FkUzYYR4DW/a0NGNwApchz9Ej8VRU=; b=Ru9O4L73Z6g4WWd1sGcfp109Ac
 S6403MJiQWah3ISfbUaamCO6P7uNYk84kwEpZi+aBZEg+LxA62yKYXhepSdOqbkY8kFaBnNzJkmjX
 ywaVLWna6Sseh9R/TurCmWP3Ma/yIPlhJpmvVOlnmImIMkNC0AnNQySdw7FCSxAXx928=;
Received: from mail-qk1-f171.google.com ([209.85.222.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1omyK2-00FomS-7W for openipmi-developer@lists.sourceforge.net;
 Mon, 24 Oct 2022 14:20:58 +0000
Received: by mail-qk1-f171.google.com with SMTP id t25so6141538qkm.2
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 24 Oct 2022 07:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=snHhLpRnzMiuF/FkUzYYR4DW/a0NGNwApchz9Ej8VRU=;
 b=YUEP9XyILJspEjolrjqp2Z9GjGMOMTrP45EmxEXsZljfkkiRMJwaEfnshgsJfs8X7M
 KNgjsXqTJhQmhXRI0AaougoHAd1ZM5MiWxlHgU+f83ikUw0WIaE3xD0cU+/ICFuviutI
 UJybqMEFZMf18o+q3wwUtI9WhD34rpMrCVBhcSmx57RZ817mZdAPNb+TaZE1IZTtVnfc
 J13VQwN6Gk7ZemBPqfi8E/tAo+RfA+q8XHsf4hBGrvHN/lBiR+F+CGw1SWxmvIaiCsec
 /9nmLcA7UkmseebRG5d3ZSiAUd+x0xYiFAU0DNreRXfO+w3UcrZtidnRR9zNPUXAXshz
 KjyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=snHhLpRnzMiuF/FkUzYYR4DW/a0NGNwApchz9Ej8VRU=;
 b=1pjycabyfxHE8TUI+d1KndrLz54Lv76FznlMnRBFNZEpkK8Etbc+9ekfwKJWo4usGf
 bi9+krfntCgqCyTDahLJrvelp37JmJdx4T/c1VJEmYCsb45a/33OSuqcENTSmOaiP82e
 HPFHYtA/3RfpDrHot1DK/1DH0kQMEoO6CZ8Ep5P1EIpjJMsRYwZxll5o+1Cy07HJ2fCv
 LpJ7w69HEqyLi5ETCsOA4CtKghQJyO+OLq2nkgnkIITLSpT7/myWW5APc9oGnFl1bOLe
 BsNA94pP9xDSWoY8UGDwtCL0jmuEbE/3Cl/dOnLjc3X3Nq9OXFm6R7zcJBThkGP60Y3l
 kzbw==
X-Gm-Message-State: ACrzQf0/lAYXyHmZEEvHk7kvIOc2iw9WYA/oF2NdnBpAuJGB5a9F/UHF
 QkmWLXdA5/oDB+V3/TCFDg==
X-Google-Smtp-Source: AMsMyM4x20N5g0CnTk189WOms1Rpbivdne8Eg7opnisvbRX7j+9LVguQi1ENkMDNfK6SBGQThtJoxA==
X-Received: by 2002:a05:620a:12ac:b0:6ec:55bf:1d79 with SMTP id
 x12-20020a05620a12ac00b006ec55bf1d79mr22630933qki.598.1666621252246; 
 Mon, 24 Oct 2022 07:20:52 -0700 (PDT)
Received: from serve.minyard.net ([47.184.185.126])
 by smtp.gmail.com with ESMTPSA id
 k11-20020a05620a414b00b006ce9e880c6fsm4141qko.111.2022.10.24.07.20.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Oct 2022 07:20:51 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:8f12:af97:5f5:1273])
 by serve.minyard.net (Postfix) with ESMTPSA id 9F91E180044;
 Mon, 24 Oct 2022 14:20:49 +0000 (UTC)
Date: Mon, 24 Oct 2022 09:20:48 -0500
From: Corey Minyard <minyard@acm.org>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <Y1afQOKvgUzOLPph@minyard.net>
References: <20221024075956.3312552-1-quan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221024075956.3312552-1-quan@os.amperecomputing.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Oct 24, 2022 at 02:59:56PM +0700, Quan Nguyen wrote:
 > This fixes the following sparse warning: > sparse warnings: (new ones
 prefixed
 by >>) > >> drivers/char/ipmi/ssif_bmc.c:254:22: sparse: s [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.171 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.171 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1omyK2-00FomS-7W
Subject: Re: [Openipmi-developer] [PATCH] ipmi: ssif_bmc: Use EPOLLIN
 instead of POLLIN
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
Cc: kernel test robot <lkp@intel.com>, Andrew Jeffery <andrew@aj.id.au>,
 openbmc@lists.ozlabs.org, thang@os.amperecomputing.com,
 linux-kernel@vger.kernel.org, Phong Vo <phong@os.amperecomputing.com>,
 Open Source Submission <patches@amperecomputing.com>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Oct 24, 2022 at 02:59:56PM +0700, Quan Nguyen wrote:
> This fixes the following sparse warning:
> sparse warnings: (new ones prefixed by >>)
> >> drivers/char/ipmi/ssif_bmc.c:254:22: sparse: sparse: invalid assignment: |=
> >> drivers/char/ipmi/ssif_bmc.c:254:22: sparse:    left side has type restricted __poll_t
> >> drivers/char/ipmi/ssif_bmc.c:254:22: sparse:    right side has type int

Thanks, you beat me to tracing this down.  It's in my for-next queue.

-corey

> 
> Fixes: dd2bc5cc9e25 ("ipmi: ssif_bmc: Add SSIF BMC driver")
> Reported-by: kernel test robot <lkp@intel.com>
> Link: https://lore.kernel.org/all/202210181103.ontD9tRT-lkp@intel.com/
> Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
> ---
>  drivers/char/ipmi/ssif_bmc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ssif_bmc.c b/drivers/char/ipmi/ssif_bmc.c
> index a7bb4b99000e..2d8069386398 100644
> --- a/drivers/char/ipmi/ssif_bmc.c
> +++ b/drivers/char/ipmi/ssif_bmc.c
> @@ -251,7 +251,7 @@ static __poll_t ssif_bmc_poll(struct file *file, poll_table *wait)
>  	spin_lock_irq(&ssif_bmc->lock);
>  	/* The request is available, userspace application can get the request */
>  	if (ssif_bmc->request_available)
> -		mask |= POLLIN;
> +		mask |= EPOLLIN;
>  
>  	spin_unlock_irq(&ssif_bmc->lock);
>  
> -- 
> 2.35.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
