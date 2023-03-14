Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 658336B988E
	for <lists+openipmi-developer@lfdr.de>; Tue, 14 Mar 2023 16:09:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pc6Go-0007bQ-Cc;
	Tue, 14 Mar 2023 15:08:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <arnd@arndb.de>) id 1pc6Gm-0007bB-GJ
 for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Mar 2023 15:08:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K4tQ8ndVOUfpM0Pr+iYsgl8sdiO//rofLCiHgEHKHaw=; b=R9jlnF2v4gWZt2yEQSj0tELSnj
 Ewe5I3tj30VzbWjwPBElW8cSD8Xe3TGd3yPP3Ro58XS8wJaLCA5EiZbTQmr5nlszZ92rSfX9Vouej
 JQu6GIBkjitO08EXB3SFt/wN1tW3BsS3CDZkflx/TqUIlgdqoubydiWDvbWn6khCrOWU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=K4tQ8ndVOUfpM0Pr+iYsgl8sdiO//rofLCiHgEHKHaw=; b=jAPFFxRbilRKYExWfHJiYvI+zo
 SK+ChbLRzWrYpzrV81ZvixoyhHlsQnSb+KVQq43uSQPixV8VvRrQCub1Kw1Yk4UMAwAnoMn0NtPbw
 cUrvDCoaD8vwsXk8/R4OT0Vc6ddR+Vbh7FVKaSDp0eEvJv5QF4ttHe2sXIAwBowxkAVw=;
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pc6Gi-00017A-KB for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Mar 2023 15:08:56 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailnew.west.internal (Postfix) with ESMTP id B5AC02B069D9;
 Tue, 14 Mar 2023 11:08:43 -0400 (EDT)
Received: from imap51 ([10.202.2.101])
 by compute6.internal (MEProxy); Tue, 14 Mar 2023 11:08:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm1; t=1678806523; x=1678813723; bh=K4
 tQ8ndVOUfpM0Pr+iYsgl8sdiO//rofLCiHgEHKHaw=; b=Bs89wlqsdZVa4k07Fb
 epoolTHKszWvfBhS2lZVBBRcF2IS0ywxX526WC1eBDNhzycvLK/kat0+XRfJx2W3
 7bMNtqMaeH4ZJIdGU9yRt8ThnhgzDS7LLG23ou/0reQhjVATwpoCDU2V8vqm2W1g
 J+1jlCnkFsdB00fs75PZcsnbMJQ5s0C5KPnLZjhqSn8SwimhhuRyHr4X0dC/PTsg
 runNfLuCg/cSr0AkAoZgfQFS4waYRIDooAHqrMWtZtpzKTnjgRDZ+8reMknQWs0Z
 eoZ852c0rPiprZQoIxvBFd9ZExdObLmVVzDXAkThfBx5XDZj6gfT51hkb+yCSOEK
 qb1A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; t=1678806523; x=1678813723; bh=K4tQ8ndVOUfpM
 0Pr+iYsgl8sdiO//rofLCiHgEHKHaw=; b=FcVdEJUEJOBFn8vyntSfSiv6vsKGS
 hxzdTfs9AcxmtwZ5y1sR0yXhzJ99CF9MXTpWC+ABwuF7Rtpv1TkBGNjNpsV6Om5f
 dtPB6w6JUNhXycjYrxPIg/RAWfQny5kcjIIZY4MsTNL5WQMkK9FZ5JVjfkhq6000
 I4KrV9UjqLokn4iBCs+nAu+QFd5+zWcdFsaymVn1JdQjXp5p6OIcBjLpx4QgreLj
 wYQZ3SOWH6tcEuqWKW6Z+BaR70e/RUZ9Fa/F4u+0ul++229JrQKHN7GgAgMbAdAD
 4cns8a5dDWvtxvYx+83RxxNxPzNTvcFgOby7T3TIytlb8ZsA7HgRcFHmw==
X-ME-Sender: <xms:-o0QZK7P_IOpvfkXAJTvZsGq0nxcIFi21rXd_e5XDXLyhDMebh2_nA>
 <xme:-o0QZD7dmPVC77qe5xy7iIFqqccVdVdsSEIY2cJ65en99sOTy5DG8bDWDMZEjjCjK
 kg8yMOB41kCCRQNqFA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrvddviedgjeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedftehr
 nhguuceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnuggsrdguvgeqnecuggftrfgrth
 htvghrnhepffehueegteeihfegtefhjefgtdeugfegjeelheejueethfefgeeghfektdek
 teffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprg
 hrnhgusegrrhhnuggsrdguvg
X-ME-Proxy: <xmx:-o0QZJc_ZJnv__s_0rxNyhivqegZK7Z_v0h4mlYw68ZNd9X5urONyg>
 <xmx:-o0QZHIp6DY7kGHp39y5XRCh11PF4bviEV4MGoRs_tuGNYI_P-Cn5g>
 <xmx:-o0QZOLVcUPTfqPTZ6w7QlCi-H2uAW7eIfDzED9woacZag2egABCvQ>
 <xmx:-40QZDB8FC5V93wwc2nXAo4BNIGlkdi-SW-0xyTxCo85UPhNMS4EWPMW1F4>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 018F2B60086; Tue, 14 Mar 2023 11:08:41 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-221-gec32977366-fm-20230306.001-gec329773
Mime-Version: 1.0
Message-Id: <9894438c-dca7-40cf-adb8-4bc7cb7b5c02@app.fastmail.com>
In-Reply-To: <CAMuHMdXXapUNn2-_+WWULq1ELLJEzVgJ7CZ-OJpbTSy-=JjZVA@mail.gmail.com>
References: <20230314121216.413434-1-schnelle@linux.ibm.com>
 <20230314121216.413434-4-schnelle@linux.ibm.com>
 <CAMuHMdXXapUNn2-_+WWULq1ELLJEzVgJ7CZ-OJpbTSy-=JjZVA@mail.gmail.com>
Date: Tue, 14 Mar 2023 16:08:20 +0100
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Geert Uytterhoeven" <geert@linux-m68k.org>,
 "Niklas Schnelle" <schnelle@linux.ibm.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Mar 14, 2023, at 15:17, Geert Uytterhoeven wrote:
 >> --- a/drivers/char/Kconfig >> +++ b/drivers/char/Kconfig >> @@ -34, 6 +34, 7
 @@ config TTY_PRINTK_LEVEL >> config PRINTER >> tristate "Parall [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1pc6Gi-00017A-KB
Subject: Re: [Openipmi-developer] [PATCH v3 03/38] char: impi,
 tpm: depend on HAS_IOPORT
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
Cc: Linux-Arch <linux-arch@vger.kernel.org>, Arnd Bergmann <arnd@kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Corey Minyard <minyard@acm.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jason Gunthorpe <jgg@ziepe.ca>,
 Jarkko Sakkinen <jarkko@kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Peter Huewe <peterhuewe@gmx.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 openipmi-developer@lists.sourceforge.net, linux-integrity@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Mar 14, 2023, at 15:17, Geert Uytterhoeven wrote:
>> --- a/drivers/char/Kconfig
>> +++ b/drivers/char/Kconfig
>> @@ -34,6 +34,7 @@ config TTY_PRINTK_LEVEL
>>  config PRINTER
>>         tristate "Parallel printer support"
>>         depends on PARPORT
>> +       depends on HAS_IOPORT
>
> This looks wrong to me.
> drivers/char/lp.c uses the parport API, no direct I/O port access.

It looks like include/linux/parport.h requires I/O port access
when PARPORT_PC is enabled and PARPORT_NOT_PC is disabled.
Maybe this would work:

      depends on PARPORT
      depends on HAS_IOPORT || PARPORT_NOT_PC

       Arnd


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
