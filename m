Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD60389AD2
	for <lists+openipmi-developer@lfdr.de>; Thu, 20 May 2021 03:19:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ljXLs-0002bW-LD; Thu, 20 May 2021 01:19:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <groeck7@gmail.com>) id 1ljXLr-0002bH-0y
 for openipmi-developer@lists.sourceforge.net; Thu, 20 May 2021 01:19:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:Subject:From:References:Cc:To:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1D3O+JRxyNjN7AfoZ/LrzEWFZxa2jRcbF0cobpLTwBI=; b=g0H8Nz+X7ywhKTktkTcSwe9w7i
 pa/FOOc2+WjMVys+L+95mc2wV7Lw8QbUmSD6LizzFuAQj9x8OmvkoRT67FLpARhhiSeTPtzkbJL4I
 t9k2zO+OMsaOLa9TMR/wtl588ZPnuPliBCFK7EDYo/vAdY4WExa+Dnki4fb022UBXsCQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:Subject:From:References:Cc:To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1D3O+JRxyNjN7AfoZ/LrzEWFZxa2jRcbF0cobpLTwBI=; b=dQ0NySw+4gbuJy16bLnu02fEKi
 nLQTbU/ozF8xzyt78VBACd7krTsQYhtFt/x3LlB9HmeutB2Ay8QHem1V48q8Nq72KAq7wNUhJEv1E
 EJFAk2dLATpodmdGR2KwAxx/Cr8f2JYlr1dqNcN5Gw2FIKDyjSRefuPVoRprqwUNx6Sg=;
Received: from mail-qk1-f169.google.com ([209.85.222.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1ljXLm-0005pO-1K
 for openipmi-developer@lists.sourceforge.net; Thu, 20 May 2021 01:19:50 +0000
Received: by mail-qk1-f169.google.com with SMTP id 76so14653934qkn.13
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 19 May 2021 18:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:to:cc:references:from:subject:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=1D3O+JRxyNjN7AfoZ/LrzEWFZxa2jRcbF0cobpLTwBI=;
 b=eU7zw9r8Zd+1y+GyrlwfK44OtLvUENYjnu3QHCykZLnrIK1EN7Jd8yURoCh4abpebN
 nXffVmA/P4XqKMZfZrpr7T1+Mmuk8i8PSzF4Cb83TFFmSc5OHyzLSo5Ss9zMgIXCFJIS
 M4OMkrTj3I76GCuMk7ahIAtCJDLiY307C2iQihHpsIUhm7tYX+55tYEtD7P+Ezw9TNLh
 TyounvSXxOTukIGHmFD9aU0uAXRo0LdKXYLUf6o5P1PO/wG2Li/5dFsHXjRf4TcdKziN
 T3KUgTFP8G0AJmwUfsb1SCqALHzb1Da224QzqT7nGd2WB2UTOWV3leq8x6jdmO3evhnd
 zo1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:to:cc:references:from:subject:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1D3O+JRxyNjN7AfoZ/LrzEWFZxa2jRcbF0cobpLTwBI=;
 b=MUEgqWzNdKOqqbDOMXUkPS1JBCJRQWL6OuQ58FCCkVZE1NSJhfT0lvigowjkFUfgoJ
 8My5lyTP6LWRdV/vWoSYrDRrV9BAIVerUwTFyWntrbuxWurJUZDgWlLvtMLXDcO3EbBy
 Pncq2bRnMfnuGVkwV0pwrJiIc6aJsA5gdUWM+fFRIljaF16hi214X8cZQ2ljt4KX62l3
 Nt/aIW7eZBPLHo0H2XcYVMfEQg8ulYZ1cJeqLI6/Df8d6qQcrKcMIusbsw0KaJlo55r8
 jzxqNFrMs0Q2aCbyo5sbLuOIvyRbluPXtF1xJoGc6oY/ukkKUvYqhrbFaDLG3DxZyhvr
 /i0A==
X-Gm-Message-State: AOAM533iju23rJbhdX6iPeNSWFcc0h+WvybjOBW/MTOsktL13nCefyiH
 LTXn907IJuIJ1OcjGAVC3Qo=
X-Google-Smtp-Source: ABdhPJyFOg1bxkiIgR5UtafC5GzENVkl+n00XgA3bXG4idwEtbP07zX0Un68QH28aZ9fnkkoC860yg==
X-Received: by 2002:ae9:e706:: with SMTP id m6mr2534629qka.74.1621473581138;
 Wed, 19 May 2021 18:19:41 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 u126sm1075725qkd.80.2021.05.19.18.19.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 May 2021 18:19:40 -0700 (PDT)
To: Joel Stanley <joel@jms.id.au>, Quan Nguyen <quan@os.amperecomputing.com>
References: <20210519074934.20712-1-quan@os.amperecomputing.com>
 <20210519074934.20712-5-quan@os.amperecomputing.com>
 <CACPK8XdyQT=cuSr9KBqC0PBkOLgBUBpyz3kZEA3JuOuZsQN_Rw@mail.gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <414a51e8-0973-0007-9ffc-2949f3c7b0f8@roeck-us.net>
Date: Wed, 19 May 2021 18:19:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CACPK8XdyQT=cuSr9KBqC0PBkOLgBUBpyz3kZEA3JuOuZsQN_Rw@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (groeck7[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.169 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: amperecomputing.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.169 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (groeck7[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1ljXLm-0005pO-1K
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 5/19/21 4:43 PM, Joel Stanley wrote:
> On Wed, 19 May 2021 at 07:50, Quan Nguyen <quan@os.amperecomputing.com> wrote:
>>
>> With Tx done w/wo ACK are ack'ed early at beginning of irq handler,
> 
> Is w/wo a typo? If not, please write the full words ("with and without")
> 
>> it is observed that, usually, the Tx done with Ack irq raises in the
>> READ REQUESTED state. This is unexpected and complaint as below appear:
>> "Unexpected Ack on read request"
>>
>> Assumed that Tx done should only be ack'ed once it was truly processed,
>> switch to late ack'ed this two irqs and seen this issue go away through
>> test with AST2500..
> 
> Please read Guneter's commit message
> 2be6b47211e17e6c90ead40d24d2a5cc815f2d5c to confirm that your changes
> do not invalidate the fix that they made.  Add them to CC for review.
>  

This might re-introduce a race condition if the code that is handling
Tx done sends another byte without acknowledging the original interrupt,
and another Tx done (or Tx nack) interrupt is received before the interrupt
handler returns. If that happens, the second Tx done interrupt would be
acknowledged but not be handled, and transmit would stall. That may well be
what I had observed at the time but it is too long ago to remember, sorry.

> Again, this is a fix that is independent of the ssif work. Please send
> it separately with a Fixes line.
> 
>>
>> Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
>> ---
>> v3:
>>    + First introduce in v3 [Quan]
>>
>>   drivers/i2c/busses/i2c-aspeed.c | 26 ++++++++++++++++++--------
>>   1 file changed, 18 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/i2c/busses/i2c-aspeed.c b/drivers/i2c/busses/i2c-aspeed.c
>> index 3fb37c3f23d4..b2e9c8f0ddf7 100644
>> --- a/drivers/i2c/busses/i2c-aspeed.c
>> +++ b/drivers/i2c/busses/i2c-aspeed.c
>> @@ -606,8 +606,12 @@ static irqreturn_t aspeed_i2c_bus_irq(int irq, void *dev_id)
>>
>>          spin_lock(&bus->lock);
>>          irq_received = readl(bus->base + ASPEED_I2C_INTR_STS_REG);
>> -       /* Ack all interrupts except for Rx done */
>> -       writel(irq_received & ~ASPEED_I2CD_INTR_RX_DONE,
>> +       /*
>> +        * Ack all interrupts except for Rx done and
>> +        * Tx done with/without ACK
> 
> Nit: this comment can be on one line.
> 
> 
>> +        */
>> +       writel(irq_received &
>> +              ~(ASPEED_I2CD_INTR_RX_DONE | ASPEED_I2CD_INTR_TX_ACK | ASPEED_I2CD_INTR_TX_NAK),
>>                 bus->base + ASPEED_I2C_INTR_STS_REG);
>>          readl(bus->base + ASPEED_I2C_INTR_STS_REG);
>>          irq_received &= ASPEED_I2CD_INTR_RECV_MASK;
>> @@ -652,12 +656,18 @@ static irqreturn_t aspeed_i2c_bus_irq(int irq, void *dev_id)
>>                          "irq handled != irq. expected 0x%08x, but was 0x%08x\n",
>>                          irq_received, irq_handled);
>>
>> -       /* Ack Rx done */
>> -       if (irq_received & ASPEED_I2CD_INTR_RX_DONE) {
>> -               writel(ASPEED_I2CD_INTR_RX_DONE,
>> -                      bus->base + ASPEED_I2C_INTR_STS_REG);
>> -               readl(bus->base + ASPEED_I2C_INTR_STS_REG);
>> -       }
>> +       /* Ack Rx done and Tx done with/without ACK */
>> +       /* Note: Re-use irq_handled variable */
> 
> I'm not sure what this note means.
> 
>> +       irq_handled = 0;
>> +       if (irq_received & ASPEED_I2CD_INTR_RX_DONE)
>> +               irq_handled |= ASPEED_I2CD_INTR_RX_DONE;
>> +       if (irq_received & ASPEED_I2CD_INTR_TX_ACK)
>> +               irq_handled |= ASPEED_I2CD_INTR_TX_ACK;
>> +       if (irq_received & ASPEED_I2CD_INTR_TX_NAK)
>> +               irq_handled |= ASPEED_I2CD_INTR_TX_NAK;
>> +       writel(irq_handled, bus->base + ASPEED_I2C_INTR_STS_REG);
> 
> Are you intentionally only acking the bits that are set when we read
> from STS_REG at the start of the handler? If not, we could write this
> instead:
> 
> writel(ASPEED_I2CD_INTR_RX_DONE | ASPEED_I2CD_INTR_TX_ACK |
> ASPEED_I2CD_INTR_TX_NAK,
>          bus->base + ASPEED_I2C_INTR_STS_REG);
> 

This would clear those bits unconditionally even if they were not handled.

> If you only want to ack the bits that are set, then do this:
> 
>    writel(irq_received &
>              (ASPEED_I2CD_INTR_RX_DONE | ASPEED_I2CD_INTR_TX_ACK |
> ASPEED_I2CD_INTR_TX_NAK),
>           bus->base + ASPEED_I2C_INTR_STS_REG);
> 
> That way, you can avoid all of the tests.
> 
Or
	irq_handled = irq_received &
		(ASPEED_I2CD_INTR_RX_DONE | ASPEED_I2CD_INTR_TX_ACK | ASPEED_I2CD_INTR_TX_NAK);
	writel(irq_handled, bus->base + ASPEED_I2C_INTR_STS_REG);

if the idea was to avoid the long statement.

Guenter

>> +       readl(bus->base + ASPEED_I2C_INTR_STS_REG);
> 
> When you move this, please add a comment that reminds us why we do a
> write-then-read (see commit c926c87b8e36dcc0ea5c2a0a0227ed4f32d0516a).
> 
>> +
>>          spin_unlock(&bus->lock);
>>          return irq_remaining ? IRQ_NONE : IRQ_HANDLED;
>>   }
>> --
>> 2.28.0
>>



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
