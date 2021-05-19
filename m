Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD993899DC
	for <lists+openipmi-developer@lfdr.de>; Thu, 20 May 2021 01:29:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ljVcf-0004EF-9N; Wed, 19 May 2021 23:29:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joel.stan@gmail.com>) id 1ljVcd-0004E5-4H
 for openipmi-developer@lists.sourceforge.net; Wed, 19 May 2021 23:29:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+sRe31lrHGcUgSFKKGzM5XKzbij36J+nU6GLQsIGJJk=; b=URWZXUa6h+x66y0iayjDi/Tydb
 yzx4HNN83Z754Z02DqURbpRUSIj4SC0icuWBnQhdK8K/oamXXtRIXsYqrQCKjmAxPDm2GBQTb06Fw
 Ow6pcMRqySoFXpjtavjx/AdX1nxbKoQ4MvYKZHMzDWBEYMROwRHjVG1Dd4XBRAUU5Eig=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+sRe31lrHGcUgSFKKGzM5XKzbij36J+nU6GLQsIGJJk=; b=D1Ye2ySDKuQz2/MJ3y5G8rsgKU
 rZRmyAyjA/hL8SXuhAlzXLJKPry6oCdzzCF3gMtFmm+o5L37ltEQYsS1N8JjrsdZh9oNCO54+iUGf
 GlY7RD1EJ5GVA1WFh5boUAfaVFJ4i75qjfg+luDZi5KnhfzLG1KS0i3GFNscvNsHVxDk=;
Received: from mail-qk1-f181.google.com ([209.85.222.181])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1ljVcV-00FpuY-2Z
 for openipmi-developer@lists.sourceforge.net; Wed, 19 May 2021 23:29:05 +0000
Received: by mail-qk1-f181.google.com with SMTP id x8so14527103qkl.2
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 19 May 2021 16:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+sRe31lrHGcUgSFKKGzM5XKzbij36J+nU6GLQsIGJJk=;
 b=HAOlx4M74XjBWQ8LN2fsuibOmX34Rxz0V7tqxzf7ZIWM+X+lRP/M7KyCNN/h19Q2ze
 ou41sL+m6NfWT9Y4u75hnp/iUQWwcpgGnc3lU4BxL1BpRf14BKJUseUHnAKYSRbMoIbB
 8WFQrW9H6mTEzhMJ8n8yJGvDHvomUkP+pmbBM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+sRe31lrHGcUgSFKKGzM5XKzbij36J+nU6GLQsIGJJk=;
 b=PFdWvF5z6eAPqxaqeH30WJpsuNWBWgbvAy53tXiG88tzo8o3Kbe8pl9LtxWINiI/Lu
 rFiJ4ec2MiVAMfVaMjiHPq/IO471HkOuXhGBNfORiVQHU7S2d+TQClanZXcjl1AL4x/s
 kpaBT/9pOVAHRhvdCspLVWbIaZVxHz7dhQzLPcuJo5Abj0r+vbU+8BQjx5q2R0P6MFsV
 S26CPnm13MdGxVyMUcwz76PIzxmSFlAMoLyDwMhslm0S/0EqAue7sKYEpciOI3jfq0Zq
 KFVChkU2nyBhttQqJm0eejyWVQDkPBidAqV84geAQLa8Y/Msw5lRuWFIxuF0l6Acletd
 leEQ==
X-Gm-Message-State: AOAM5317SHk/kegOqhmt/OsfUpkMg0MibpunjP8/7NVE4AHy+tBCQ+5j
 moroMRyWluFyE81ZpdxI3/Vone3IuqpU7qlwJbs=
X-Google-Smtp-Source: ABdhPJzs/PNVyZHXiN60/U4ROwriKRalRsyur5ioWhvG9uZxMJo/oQyw0WnlQ0RLEb2ucWzVwat0FQEtGAkFU+vY1FU=
X-Received: by 2002:a05:620a:704:: with SMTP id 4mr1279089qkc.66.1621466929079; 
 Wed, 19 May 2021 16:28:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210519074934.20712-1-quan@os.amperecomputing.com>
 <20210519074934.20712-4-quan@os.amperecomputing.com>
In-Reply-To: <20210519074934.20712-4-quan@os.amperecomputing.com>
From: Joel Stanley <joel@jms.id.au>
Date: Wed, 19 May 2021 23:28:37 +0000
Message-ID: <CACPK8XeFsuEXeCvG9DC0z+tiri6ptjOFOXe3x+COEZTVqUbVFg@mail.gmail.com>
To: Quan Nguyen <quan@os.amperecomputing.com>,
 Ryan Chen <ryan_chen@aspeedtech.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (joel.stan[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: amperecomputing.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.181 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.181 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1ljVcV-00FpuY-2Z
Subject: Re: [Openipmi-developer] [PATCH v3 3/7] i2c: aspeed: Fix unhandled
 Tx done with NAK
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

Ryan, can you please review this change?

On Wed, 19 May 2021 at 07:50, Quan Nguyen <quan@os.amperecomputing.com> wrote:
>
> It is observed that in normal condition, when the last byte sent by
> slave, the Tx Done with NAK irq will raise.
> But it is also observed that sometimes master issues next transaction
> too quick while the slave irq handler is not yet invoked and Tx Done
> with NAK irq of last byte of previous READ PROCESSED was not ack'ed.
> This Tx Done with NAK irq is raised together with the Slave Match and
> Rx Done irq of the next coming transaction from master.
> Unfortunately, the current slave irq handler handles the Slave Match and
> Rx Done only in higher priority and ignore the Tx Done with NAK, causing
> the complain as below:
> "aspeed-i2c-bus 1e78a040.i2c-bus: irq handled != irq. expected
> 0x00000086, but was 0x00000084"
>
> This commit handles this case by emitting a Slave Stop event for the
> Tx Done with NAK before processing Slave Match and Rx Done for the
> coming transaction from master.

It sounds like this patch is independent of the rest of the series,
and can go in on it's own. Please send it separately to the i2c
maintainers and add a suitable Fixes line, such as:

  Fixes: f9eb91350bb2 ("i2c: aspeed: added slave support for Aspeed I2C driver")

>
> Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
> ---
> v3:
>   + First introduce in v3 [Quan]
>
>  drivers/i2c/busses/i2c-aspeed.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/i2c/busses/i2c-aspeed.c b/drivers/i2c/busses/i2c-aspeed.c
> index 724bf30600d6..3fb37c3f23d4 100644
> --- a/drivers/i2c/busses/i2c-aspeed.c
> +++ b/drivers/i2c/busses/i2c-aspeed.c
> @@ -254,6 +254,11 @@ static u32 aspeed_i2c_slave_irq(struct aspeed_i2c_bus *bus, u32 irq_status)
>
>         /* Slave was requested, restart state machine. */
>         if (irq_status & ASPEED_I2CD_INTR_SLAVE_MATCH) {

Can you explain why you need to do this handing inside the SLAVE_MATCH case?

Could you instead move the TX_NAK handling to be above the SLAVE_MATCH case?

> +               if (irq_status & ASPEED_I2CD_INTR_TX_NAK &&
> +                   bus->slave_state == ASPEED_I2C_SLAVE_READ_PROCESSED) {

Either way, this needs a comment to explain what we're working around.

> +                       irq_handled |= ASPEED_I2CD_INTR_TX_NAK;
> +                       i2c_slave_event(slave, I2C_SLAVE_STOP, &value);
> +               }
>                 irq_handled |= ASPEED_I2CD_INTR_SLAVE_MATCH;
>                 bus->slave_state = ASPEED_I2C_SLAVE_START;
>         }
> --
> 2.28.0
>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
