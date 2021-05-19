Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C90389A00
	for <lists+openipmi-developer@lfdr.de>; Thu, 20 May 2021 01:43:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ljVqh-0004zF-Gt; Wed, 19 May 2021 23:43:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joel.stan@gmail.com>) id 1ljVqf-0004z0-FL
 for openipmi-developer@lists.sourceforge.net; Wed, 19 May 2021 23:43:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jZj61H+nZldX9VF8Rk7SoLRZEnhdWQ15nrHYMIdlXL8=; b=YKU7/Q+Mxhr2BlOqD5UuRELRuA
 vBL+KdTum6+5/VHN22xzaN3npTBscGcUOPQk6VZKgJE/HVDDUoX6E7On57BenTDNo2jXne8Y5JH+j
 6WmdhsbVF1G7MMpJNTp/0e1VwScGcSGX2oXCRtooAg8G+dwV80clLxLrnylx0njhbIdw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jZj61H+nZldX9VF8Rk7SoLRZEnhdWQ15nrHYMIdlXL8=; b=XUyqdpVq+WX1od737CqBhdlOLJ
 MJq2J/Hs2CHZ0T6HIyW0ICFvT1OvBW/6iNUWaQRopgSssGnsihgWWewYYkiPx+adQykeOQwg7A0D2
 9729H2o0isfkLBBwPfBPlMTvG8Hepnv0j2Fp7jDrv8q36nlxSP1mcnXHtujeZXm3MCNQ=;
Received: from mail-qk1-f182.google.com ([209.85.222.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1ljVqY-00FqgB-Az
 for openipmi-developer@lists.sourceforge.net; Wed, 19 May 2021 23:43:35 +0000
Received: by mail-qk1-f182.google.com with SMTP id q10so14538064qkc.5
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 19 May 2021 16:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jZj61H+nZldX9VF8Rk7SoLRZEnhdWQ15nrHYMIdlXL8=;
 b=hV289Pn1fzt0l5vYzw9Zco9XFbeqr0tKlwl117wL+ReIbVLezHs/xFwIcMKafGIL/r
 Ceq9AJkQHisWMOwWZVoe+E3BdzypGyKrbGtP5GVg+wjxmevjIE5q30D1Z3rQCTBmbzyl
 JopSkzzu13aCRFAkE3C3pYN93lb/AFgpuiOcI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jZj61H+nZldX9VF8Rk7SoLRZEnhdWQ15nrHYMIdlXL8=;
 b=c4Kx8TDhAAkYjcBR8O3zmuKwjmJNONkzau7E2WjYYmuzsK2BXX0k6KwxW7qAUCb0UC
 J0ZGxnpp1NQSDR+j16KMqaqguvq3hR/wUpw2JLN+qQJ//s9cG/ySGslVTyz4FOT6xK1K
 Jf233qIRGuK/pjMtFRDqZAAw5gLBW9is5egrWCuwbZJ+A9uWv+MSuon/jXyM12cUw7Uo
 6vLdx2x8xILmhwoquEk1T04v27Y0gcDu0tNSgjbt8So+8KUU66NnUvcBCJyAM1kMleNR
 ZLY5dM+khEnto61ZAztbTTjt4Ekbzku5xG8qJti32+chRfUbZADHq831UCVKgT5s9Njf
 7JcQ==
X-Gm-Message-State: AOAM530iZyNyBQPv9O0Kp99GPESlSjDdiHilj2fLG/mWpnWhmEDCCJsx
 Krd0Clc8Oiego+Tt9GIdggRnPSWCEEb8jf/GFP8=
X-Google-Smtp-Source: ABdhPJyUszWiuobnzOy5L9VplXiMBG9qLzJjbpbR0WfzIFw8cspGiZ3PnAV6tV3oDvUEgCvPn/rTmcBK9mwiyYTq9ws=
X-Received: by 2002:a05:620a:704:: with SMTP id 4mr1331345qkc.66.1621467800517; 
 Wed, 19 May 2021 16:43:20 -0700 (PDT)
MIME-Version: 1.0
References: <20210519074934.20712-1-quan@os.amperecomputing.com>
 <20210519074934.20712-5-quan@os.amperecomputing.com>
In-Reply-To: <20210519074934.20712-5-quan@os.amperecomputing.com>
From: Joel Stanley <joel@jms.id.au>
Date: Wed, 19 May 2021 23:43:08 +0000
Message-ID: <CACPK8XdyQT=cuSr9KBqC0PBkOLgBUBpyz3kZEA3JuOuZsQN_Rw@mail.gmail.com>
To: Quan Nguyen <quan@os.amperecomputing.com>,
 Guenter Roeck <linux@roeck-us.net>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: amperecomputing.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (joel.stan[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.182 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.182 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1ljVqY-00FqgB-Az
Subject: Re: [Openipmi-developer] [PATCH v3 4/7] i2c: aspeed: Acknowledge Tx
 done w/wo ACK irq late
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Corey Minyard <minyard@acm.org>,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Phong Vo <phong@os.amperecomputing.com>, Wolfram Sang <wsa@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-i2c@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 openipmi-developer@lists.sourceforge.net,
 Open Source Submission <patches@amperecomputing.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, 19 May 2021 at 07:50, Quan Nguyen <quan@os.amperecomputing.com> wrote:
>
> With Tx done w/wo ACK are ack'ed early at beginning of irq handler,

Is w/wo a typo? If not, please write the full words ("with and without")

> it is observed that, usually, the Tx done with Ack irq raises in the
> READ REQUESTED state. This is unexpected and complaint as below appear:
> "Unexpected Ack on read request"
>
> Assumed that Tx done should only be ack'ed once it was truly processed,
> switch to late ack'ed this two irqs and seen this issue go away through
> test with AST2500..

Please read Guneter's commit message
2be6b47211e17e6c90ead40d24d2a5cc815f2d5c to confirm that your changes
do not invalidate the fix that they made.  Add them to CC for review.

Again, this is a fix that is independent of the ssif work. Please send
it separately with a Fixes line.

>
> Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
> ---
> v3:
>   + First introduce in v3 [Quan]
>
>  drivers/i2c/busses/i2c-aspeed.c | 26 ++++++++++++++++++--------
>  1 file changed, 18 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/i2c/busses/i2c-aspeed.c b/drivers/i2c/busses/i2c-aspeed.c
> index 3fb37c3f23d4..b2e9c8f0ddf7 100644
> --- a/drivers/i2c/busses/i2c-aspeed.c
> +++ b/drivers/i2c/busses/i2c-aspeed.c
> @@ -606,8 +606,12 @@ static irqreturn_t aspeed_i2c_bus_irq(int irq, void *dev_id)
>
>         spin_lock(&bus->lock);
>         irq_received = readl(bus->base + ASPEED_I2C_INTR_STS_REG);
> -       /* Ack all interrupts except for Rx done */
> -       writel(irq_received & ~ASPEED_I2CD_INTR_RX_DONE,
> +       /*
> +        * Ack all interrupts except for Rx done and
> +        * Tx done with/without ACK

Nit: this comment can be on one line.


> +        */
> +       writel(irq_received &
> +              ~(ASPEED_I2CD_INTR_RX_DONE | ASPEED_I2CD_INTR_TX_ACK | ASPEED_I2CD_INTR_TX_NAK),
>                bus->base + ASPEED_I2C_INTR_STS_REG);
>         readl(bus->base + ASPEED_I2C_INTR_STS_REG);
>         irq_received &= ASPEED_I2CD_INTR_RECV_MASK;
> @@ -652,12 +656,18 @@ static irqreturn_t aspeed_i2c_bus_irq(int irq, void *dev_id)
>                         "irq handled != irq. expected 0x%08x, but was 0x%08x\n",
>                         irq_received, irq_handled);
>
> -       /* Ack Rx done */
> -       if (irq_received & ASPEED_I2CD_INTR_RX_DONE) {
> -               writel(ASPEED_I2CD_INTR_RX_DONE,
> -                      bus->base + ASPEED_I2C_INTR_STS_REG);
> -               readl(bus->base + ASPEED_I2C_INTR_STS_REG);
> -       }
> +       /* Ack Rx done and Tx done with/without ACK */
> +       /* Note: Re-use irq_handled variable */

I'm not sure what this note means.

> +       irq_handled = 0;
> +       if (irq_received & ASPEED_I2CD_INTR_RX_DONE)
> +               irq_handled |= ASPEED_I2CD_INTR_RX_DONE;
> +       if (irq_received & ASPEED_I2CD_INTR_TX_ACK)
> +               irq_handled |= ASPEED_I2CD_INTR_TX_ACK;
> +       if (irq_received & ASPEED_I2CD_INTR_TX_NAK)
> +               irq_handled |= ASPEED_I2CD_INTR_TX_NAK;
> +       writel(irq_handled, bus->base + ASPEED_I2C_INTR_STS_REG);

Are you intentionally only acking the bits that are set when we read
from STS_REG at the start of the handler? If not, we could write this
instead:

writel(ASPEED_I2CD_INTR_RX_DONE | ASPEED_I2CD_INTR_TX_ACK |
ASPEED_I2CD_INTR_TX_NAK,
        bus->base + ASPEED_I2C_INTR_STS_REG);

If you only want to ack the bits that are set, then do this:

  writel(irq_received &
            (ASPEED_I2CD_INTR_RX_DONE | ASPEED_I2CD_INTR_TX_ACK |
ASPEED_I2CD_INTR_TX_NAK),
         bus->base + ASPEED_I2C_INTR_STS_REG);

That way, you can avoid all of the tests.

> +       readl(bus->base + ASPEED_I2C_INTR_STS_REG);

When you move this, please add a comment that reminds us why we do a
write-then-read (see commit c926c87b8e36dcc0ea5c2a0a0227ed4f32d0516a).

> +
>         spin_unlock(&bus->lock);
>         return irq_remaining ? IRQ_NONE : IRQ_HANDLED;
>  }
> --
> 2.28.0
>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
