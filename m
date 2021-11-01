Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9F5442406
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 Nov 2021 00:32:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mhgnO-00067f-9g; Mon, 01 Nov 2021 23:32:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <joel.stan@gmail.com>) id 1mhgnK-00067U-As
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Nov 2021 23:32:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+2AekMdRuUmfOF7hhTuIxKtH3t+eGKh3B1xilMoKACM=; b=SnCe3MVDtQySoaFjTYkOAyQgby
 1jq0GqX7oYUsMVNDFA4sF+a8sXE/+PLsRyXBJORjBN66Dzn+EKmhIde6IfgqYvFrg2/0ZKH1MtjzW
 KZO/hUwFczhR0bQ2Mr9/qwtcuGstLu5Zd5+I34xGHOr2/WabmeBWnUYxp/bSaP3yXQHU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+2AekMdRuUmfOF7hhTuIxKtH3t+eGKh3B1xilMoKACM=; b=XSzZt1aJ3FIc1pv7KmGKxYqcgh
 X4FJ+na6qVu3GLLtf8WImA7v7B6jSiNK4lqUy+xdlcDOOSfQP0tJ5Gj4+ajnZPEbqDcIu08afG2/p
 Uy5pRP2UZ9qQr6SIPN2qUC5HRnQ9bod5+mlXwc9JCwL0tC/14yc3X4Jb2gX11pnb1gPA=;
Received: from mail-qk1-f170.google.com ([209.85.222.170])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mhgnE-00DDyk-5B
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Nov 2021 23:32:50 +0000
Received: by mail-qk1-f170.google.com with SMTP id bp7so12896522qkb.10
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 01 Nov 2021 16:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+2AekMdRuUmfOF7hhTuIxKtH3t+eGKh3B1xilMoKACM=;
 b=Jp0dzjCcHMjdLxHSiQYMeJjotS4CWEV+xV5wUqv2FCfd8S6n8/a+8yzv9m94JTRNtk
 XhrGnn0FwdRRmoOKp0+beuC4ACgLpZAxXDqsB+6KbmXx1ub0GP8i35r0Yt5p0J+eQY4c
 L56WI5Gn1IT7cwDkHiTeUWV7sNJ99pWs2nTtc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+2AekMdRuUmfOF7hhTuIxKtH3t+eGKh3B1xilMoKACM=;
 b=pv6wAqwMZ5hXrWcdfGV7WjbOlGt12MsNXtkoxqvBMTMNvyiIXnDV7n3R2KB4Ye+EsQ
 LTdrZfycLPdfhvPs+T3GHugA+dchA5upwO5hZNIOc9O5ikdrFb2CmzQZkvrcI5Zx6zQB
 EiGXsytBq4p5/yDkbP9nDNvf6q8EiU0nCckrc4hJN+KQHaGvFpYm6TdKmYUtgie2HKat
 B4WFCaGluICgx6oHkRt4K7X/+f6I+wiAOhntRD+ekr/E5z/0aemBeB3PlnTGTh7CaKBp
 I6ExFiMxdEsj1acIRhqt3JNgI+9erEUczCUE5IuSXFrMgI/lDrhZodtje7iboMeROVGO
 AUfw==
X-Gm-Message-State: AOAM531845p/oGEsI1DjMHgNwgKvWXP8GsjU27CuLhzZ05GxEGMOESvN
 1s4/ZWmp/go95+3d/xx49wVVSMGfbX236bWE9Bc=
X-Google-Smtp-Source: ABdhPJwl3foI/6kisHiZGLKmg+JxVJubW0Q7Ez6VewrfNRBphIvGg4bOcd8M2Wj3eAHSQO3KK1ed65VJIOIQSICSmMc=
X-Received: by 2002:a05:620a:4588:: with SMTP id
 bp8mr18490618qkb.292.1635809558119; 
 Mon, 01 Nov 2021 16:32:38 -0700 (PDT)
MIME-Version: 1.0
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <20211101233751.49222-3-jae.hyun.yoo@intel.com>
In-Reply-To: <20211101233751.49222-3-jae.hyun.yoo@intel.com>
From: Joel Stanley <joel@jms.id.au>
Date: Mon, 1 Nov 2021 23:32:25 +0000
Message-ID: <CACPK8XeF2UZDmhXE69pgXXRzJW6Ni=86O=QRNCo2Y1+wyf0YwQ@mail.gmail.com>
To: Jae Hyun Yoo <jae.hyun.yoo@intel.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 1 Nov 2021 at 23:18, <jae.hyun.yoo@intel.com> wrote:
 > > From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> > > If LPC BT driver
 is registered ahead of lpc-ctrl module, LPC BT > hardware block [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.170 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.170 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mhgnE-00DDyk-5B
Subject: Re: [Openipmi-developer] [PATCH -next 2/4] ipmi: bt: add clock
 control logic
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 devicetree <devicetree@vger.kernel.org>,
 Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Corey Minyard <minyard@acm.org>,
 Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
 Cedric Le Goater <clg@kaod.org>, openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, 1 Nov 2021 at 23:18, <jae.hyun.yoo@intel.com> wrote:
>
> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>
> If LPC BT driver is registered ahead of lpc-ctrl module, LPC BT
> hardware block will be enabled without heart beating of LCLK until
> lpc-ctrl enables the LCLK. This issue causes improper handling on
> host interrupts when the host sends interrupts in that time frame.
> Then kernel eventually forcibly disables the interrupt with
> dumping stack and printing a 'nobody cared this irq' message out.
>
> To prevent this issue, all LPC sub drivers should enable LCLK
> individually so this patch adds clock control logic into the LPC
> BT driver.
>
> Fixes: 54f9c4d0778b ("ipmi: add an Aspeed BT IPMI BMC driver")
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

Reviewed-by: Joel Stanley <joel@jms.id.au>

> ---
>  drivers/char/ipmi/bt-bmc.c | 24 +++++++++++++++++++++++-
>  1 file changed, 23 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/char/ipmi/bt-bmc.c b/drivers/char/ipmi/bt-bmc.c
> index 7450904e330a..a20f92cc7b18 100644
> --- a/drivers/char/ipmi/bt-bmc.c
> +++ b/drivers/char/ipmi/bt-bmc.c
> @@ -5,6 +5,7 @@
>
>  #include <linux/atomic.h>
>  #include <linux/bt-bmc.h>
> +#include <linux/clk.h>
>  #include <linux/errno.h>
>  #include <linux/interrupt.h>
>  #include <linux/io.h>
> @@ -62,6 +63,7 @@ struct bt_bmc {
>         wait_queue_head_t       queue;
>         struct timer_list       poll_timer;
>         struct mutex            mutex;
> +       struct clk              *clk;
>  };
>
>  static atomic_t open_count = ATOMIC_INIT(0);
> @@ -423,6 +425,19 @@ static int bt_bmc_probe(struct platform_device *pdev)
>         if (IS_ERR(bt_bmc->base))
>                 return PTR_ERR(bt_bmc->base);
>
> +       bt_bmc->clk = devm_clk_get(dev, NULL);
> +       if (IS_ERR(bt_bmc->clk)) {
> +               rc = PTR_ERR(bt_bmc->clk);
> +               if (rc != -EPROBE_DEFER)
> +                       dev_err(dev, "Unable to get clock\n");
> +               return rc;
> +       }
> +       rc = clk_prepare_enable(bt_bmc->clk);
> +       if (rc) {
> +               dev_err(dev, "Unable to enable clock\n");
> +               return rc;
> +       }
> +
>         mutex_init(&bt_bmc->mutex);
>         init_waitqueue_head(&bt_bmc->queue);
>
> @@ -433,7 +448,7 @@ static int bt_bmc_probe(struct platform_device *pdev)
>         rc = misc_register(&bt_bmc->miscdev);
>         if (rc) {
>                 dev_err(dev, "Unable to register misc device\n");
> -               return rc;
> +               goto err;
>         }
>
>         bt_bmc_config_irq(bt_bmc, pdev);
> @@ -457,6 +472,11 @@ static int bt_bmc_probe(struct platform_device *pdev)
>         clr_b_busy(bt_bmc);
>
>         return 0;
> +
> +err:
> +       clk_disable_unprepare(bt_bmc->clk);
> +
> +       return rc;
>  }
>
>  static int bt_bmc_remove(struct platform_device *pdev)
> @@ -466,6 +486,8 @@ static int bt_bmc_remove(struct platform_device *pdev)
>         misc_deregister(&bt_bmc->miscdev);
>         if (bt_bmc->irq < 0)
>                 del_timer_sync(&bt_bmc->poll_timer);
> +       clk_disable_unprepare(bt_bmc->clk);
> +
>         return 0;
>  }
>
> --
> 2.25.1
>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
