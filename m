Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C80026B971F
	for <lists+openipmi-developer@lfdr.de>; Tue, 14 Mar 2023 15:02:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pc5EL-0003ig-ML;
	Tue, 14 Mar 2023 14:02:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <arnd@arndb.de>) id 1pc5EF-0003iV-2E
 for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Mar 2023 14:02:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WBd+C/j8mhtp5c0TjlJPF0SPoxCyIV7iwJxcnNxLZcM=; b=HpNY2ENRJ1zvHUdiFC2nT9dk1M
 6sAZfyC79LsUxDzS8BJdQ8FL21qKxUZ+JVn2PQt15sWmW3OJnxwUguxPyH2nImc8u+9EFBZGaJ9JF
 3oFbMF+IUCjNGr5z0MHqfiL9QEraC7pb6798gaMLkK7CVx1QR/JegEIa6YQjePHtLXoc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WBd+C/j8mhtp5c0TjlJPF0SPoxCyIV7iwJxcnNxLZcM=; b=hKJsyz+7fmyW4a4E5FpmWSRtYy
 KKRtQ2GFZRQLFleorRpq8MH3V5nhQck0lSD8poSzs2hOLhm/eU2JmsJYAosSg6aBKY3AVv6eliP/0
 PMox4/m7TLWL4UJeDe0v38L3Ou80VLP/iyz7yR93fj2LI9KUghV+XZrf63tdEcSobWP4=;
Received: from wnew4-smtp.messagingengine.com ([64.147.123.18])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pc5EE-008RE0-DI for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Mar 2023 14:02:15 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailnew.west.internal (Postfix) with ESMTP id 955F52B066D3;
 Tue, 14 Mar 2023 10:02:05 -0400 (EDT)
Received: from imap51 ([10.202.2.101])
 by compute6.internal (MEProxy); Tue, 14 Mar 2023 10:02:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm1; t=1678802525; x=1678809725; bh=WB
 d+C/j8mhtp5c0TjlJPF0SPoxCyIV7iwJxcnNxLZcM=; b=VdWyKhvTv+jdEziETx
 TV6HzY5PNvrm28K8j6ibWmCVeXd0xqM6Psq8BQVnESUXoFhma1kaLgJLY0yBj0ko
 XJ5jABaaZ8OT5VZJEzNEWKw8kDmD19/UtQ6YKjT6Ev/UX8tsDbeSj8jP7YLtcJKM
 TjtRMvU0UqLT8wtSSk+A3TDDBlCBr+VAHjwlNUl+47Wbs3pThzYJrwJK9pzw4BgD
 Wze8nol1pyPQvzr/oJh6K4DQUp+zo5yoAx6SnXFtOZapfOqGCQdoenABzo4Wpgxq
 6fwishU8mAqqDG6Zt7942fANAJeNw4WZuQSCW8UJwNpOEAg992CLDP6HSXg/LQDM
 feYw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; t=1678802525; x=1678809725; bh=WBd+C/j8mhtp5
 c0TjlJPF0SPoxCyIV7iwJxcnNxLZcM=; b=leiXa8uUtrsDEf7ocWr9zpMIL8y6C
 Y3fT2UdEF+mdYoPhhnHZ0azz4rgHBDQj8TykHxLTIdwIFs8VfmsP9ri1DvisxXoO
 oElyfP042Uyhl30u3E8sq7+iHVkHQ0ihL4vbYJ6AFNOUCMbYJFK4vb93SRLgVclS
 CuQ5tO8xqhwelZ8o4P1GQflIk0ILvwXLNEvwUDr3/cXvYuujr7lZWIrjOZgFbudn
 P5iqr1hhJs8jfCmPfdSWs9z7AaoOEGzzOmDSp/SCbP/dmXLTed2NKLi3nsrWCf3N
 QWmYIDO+YX88MQP6aQYOuF2QAbsJqDyI992Yo3NJS32qf1HBBMi5qk6Lw==
X-ME-Sender: <xms:W34QZKUkdQoiFofWS4wO5wecLFitlY_ndcfd-ILsPPReIIRskgj03w>
 <xme:W34QZGn03tim2vbgsy8RWA4iQN2lI3a6cYbYZ4eYgpbF09wsY4OEoLrTvOb8PawEI
 J1gOf1bgPW07ONDvAI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrvddviedgiedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedftehr
 nhguuceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnuggsrdguvgeqnecuggftrfgrth
 htvghrnhepffehueegteeihfegtefhjefgtdeugfegjeelheejueethfefgeeghfektdek
 teffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprg
 hrnhgusegrrhhnuggsrdguvg
X-ME-Proxy: <xmx:XH4QZOa-sPwA4xCUdN4i0KCJY1TMhvHGXZ3yPxfpgpp83g_vSuon-w>
 <xmx:XH4QZBVYrxeB0UavIeMECCMa0kBgn9G_i2zyAlaTA75261X3DyXOPg>
 <xmx:XH4QZEkja0R9uKoVaitsZuFK6o4KDmq17kT4jDd7GdnlsZixCm9l6g>
 <xmx:XX4QZDfPfGL1xaIKXaXm4G-RdvAtBx9ntyK3bFkg6JPfPmlERZacjdC2n-M>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id D0465B60086; Tue, 14 Mar 2023 10:02:03 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-221-gec32977366-fm-20230306.001-gec329773
Mime-Version: 1.0
Message-Id: <2bdbd094-c16a-43b4-a8ac-c5d8f28cd9aa@app.fastmail.com>
In-Reply-To: <ZBBmqKDh97KexRH9@kernel.org>
References: <20230314121216.413434-1-schnelle@linux.ibm.com>
 <20230314121216.413434-4-schnelle@linux.ibm.com>
 <ZBBmqKDh97KexRH9@kernel.org>
Date: Tue, 14 Mar 2023 15:01:43 +0100
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Jarkko Sakkinen" <jarkko@kernel.org>,
 "Niklas Schnelle" <schnelle@linux.ibm.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Mar 14, 2023, at 13:20, Jarkko Sakkinen wrote: > On
 Tue, Mar 14, 2023 at 01:11:41PM +0100, Niklas Schnelle wrote: > Reviewed-by:
 Jarkko Sakkinen <jarkko@kernel.org> > > Who should pick this? All patches
 in this series depend on patch 1, so either I merge them all through the
 asm-generic tree, or I ask Linus to apply just patch 1 for now, and then each
 subsystem can pick up their own patch [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.18 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1pc5EE-008RE0-DI
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
 Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Peter Huewe <peterhuewe@gmx.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 openipmi-developer@lists.sourceforge.net, Palmer Dabbelt <palmer@dabbelt.com>,
 linux-integrity@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Mar 14, 2023, at 13:20, Jarkko Sakkinen wrote:
> On Tue, Mar 14, 2023 at 01:11:41PM +0100, Niklas Schnelle wrote:

> Reviewed-by: Jarkko Sakkinen <jarkko@kernel.org>
>
> Who should pick this?

All patches in this series depend on patch 1, so either I merge
them all through the asm-generic tree, or I ask Linus to apply just
patch 1 for now, and then each subsystem can pick up their own
patches based on top of that.

    Arnd


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
