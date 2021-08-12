Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD383EA5C2
	for <lists+openipmi-developer@lfdr.de>; Thu, 12 Aug 2021 15:37:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mEAtP-0003LW-VT; Thu, 12 Aug 2021 13:37:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1mEAtO-0003LC-JS
 for openipmi-developer@lists.sourceforge.net; Thu, 12 Aug 2021 13:37:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lxEYcLoSmKcwAqq6lEWUTNh1J0BSQ5RJ+tPc70kIvv8=; b=O+tzE9uPyznf8tTvBnN+ATGeJG
 tseSbEhcQhI6AzvWAYfs8RBAE07B4Ulj26j9Q8afK/4HVTu+07pkt2uG/XlBUl3VoW+B7Eaa29J9x
 z0n1mknz8v05yaSg4je+XQ+/hpcNiuwtAh689Ek/Y1tBhw3vnQ1/VIP7Yym5zuQRSb+0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lxEYcLoSmKcwAqq6lEWUTNh1J0BSQ5RJ+tPc70kIvv8=; b=K2zEJz41UwGvToDKjcoF/IHTXj
 gDpezG2qa81M1/ps17v/CjpMhhtgjS9mL3v2T3g2TJr7SkAu8A0/Eh1ttdyVb86+yS/64cXBUS5vI
 NY68XpMvYF+J6rUe19n0fQDaKzRRYAy2+dWLwGPowlNc1c1QILcsAmb8qC8EX7B4t7Ak=;
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mEAtM-0008Ld-5z
 for openipmi-developer@lists.sourceforge.net; Thu, 12 Aug 2021 13:37:06 +0000
Received: by mail-ot1-f48.google.com with SMTP id
 h63-20020a9d14450000b02904ce97efee36so7743090oth.7
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 12 Aug 2021 06:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=lxEYcLoSmKcwAqq6lEWUTNh1J0BSQ5RJ+tPc70kIvv8=;
 b=N+l05ozxyD1NG1dkZUngFULf3v7jhRSbnR3bHLqfiz9dby07s+mONwlfvcPK0q4TpC
 7TiWQGQOBdoF1zE3c/2Gu2F+K4pOTl/yJy7prAkKAgeKH9paMe+57QeOsB1Sw8iBuDgf
 Bg7Lnbtyiqb+chBrZwjK1IQMznYfVvO7//56Eb19UoWrGfVEesfIKpwXICsLwFDGNkOT
 LBXWVs6EteP/0VimsFRXf7DXL7R4RVLFWiIewc/ERmTBNu76kb7rS5cQ+lxfBSfozlXq
 mhnZAoTGxU5l0sh9IM0Vh4vNMDkUmbcaFnAZsSxbEemP4+e0WlFJJyZTB9PmygkiPE6E
 BNLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to;
 bh=lxEYcLoSmKcwAqq6lEWUTNh1J0BSQ5RJ+tPc70kIvv8=;
 b=sZrBgn+fmasMJxiR98cDlw56Rq8IlhG3wqSlJfnsBjaYukuF68GM5FQMwnmBU8tyqI
 Xa+076VsS0QvsusLzxrEqQGtTcFcVksbgbHffoBh1C0f6Hw/O0uSkV0aOxqj1ahV3oyM
 0mce5grR5KH9zj0yHO040FCeFUx9sJWH0bR2+zJH1pMFF35eBZJDTs7e6VhasoE356Ly
 bp4aJxcB49D5ydmCzD4tdm+gOKxjZI9sT2bCkzLG1wu5hIxwVoDJNnkqVNqFz1rmzypu
 NKv77qIGiVMQh8/0in2kturqf2gdHnx/Zz67hbRLgynN5IRAb3uCsp9klaUjWuLXgxEY
 Q/yg==
X-Gm-Message-State: AOAM530yY7vZMmzZOxjtbCHoUrUAVkqJOlwVfsZhASCVcTuPfujR3AbJ
 uR95aRAvCLoWtXjPzkczrA==
X-Google-Smtp-Source: ABdhPJwSEJIsmvBs2Ju7id/07iwZC6CGzdrHno0A3fxPpp0tLpTJfwR7oTj/F4lF6MngczX5vwnTPg==
X-Received: by 2002:a05:6830:90f:: with SMTP id
 v15mr3478948ott.202.1628775418413; 
 Thu, 12 Aug 2021 06:36:58 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id r16sm605716otu.26.2021.08.12.06.36.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Aug 2021 06:36:57 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:39aa:3f67:e568:698d])
 by serve.minyard.net (Postfix) with ESMTPSA id 4F1F1180058;
 Thu, 12 Aug 2021 13:36:56 +0000 (UTC)
Date: Thu, 12 Aug 2021 08:36:55 -0500
From: Corey Minyard <minyard@acm.org>
To: Wolfram Sang <wsa@kernel.org>, Quan Nguyen <quan@os.amperecomputing.com>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@aj.id.au>,
 Brendan Higgins <brendanhiggins@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 openipmi-developer@lists.sourceforge.net,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org,
 Open Source Submission <patches@amperecomputing.com>,
 Phong Vo <phong@os.amperecomputing.com>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>
Message-ID: <20210812133655.GT3406@minyard.net>
References: <20210714033833.11640-1-quan@os.amperecomputing.com>
 <20210714033833.11640-2-quan@os.amperecomputing.com>
 <YRTQP9sX0hkTJMTx@shikoro>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YRTQP9sX0hkTJMTx@shikoro>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.48 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.48 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1mEAtM-0008Ld-5z
Subject: Re: [Openipmi-developer] [PATCH v5 1/3] i2c: aspeed: Add
 slave_enable() to toggle slave mode
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Aug 12, 2021 at 09:39:43AM +0200, Wolfram Sang wrote:
> Hi all,
> 
> On Wed, Jul 14, 2021 at 10:38:31AM +0700, Quan Nguyen wrote:
> > Slave needs time to prepare the response data before Master could
> > enquiry via read transaction. However, there is no mechanism for
> > i2c-aspeed Slave to notify Master that it needs more time to process
> > and this make Master side to time out when trying to get the response.
> > 
> > This commit introduces the slave_enable() callback in struct
> > i2c_algorithm for Slave to temporary stop the Slave mode while working
> > on the response and re-enable the Slave when response data ready.
> 
> Sorry that I couldn't chime in earlier, but NAK!
> 
> >  include/linux/i2c.h             |  2 ++
> 
> @Corey: Please do not change this file without my ACK. It is not a
> trivial change but an API extenstion and that should really be acked by
> the subsystem maintainer, in this case me. I was really surprised to see
> this in linux-next already.

I am sorry, I'll pull it out.

-corey

> 
> @all: Plus, I neither like the API (because it doesn't look generic to
> me but mostly handling one issue needed here) nor do I fully understand
> the use case. Normally, when a read is requested and the backend needs
> time to deliver the data, the hardware should stretch the SCL clock
> until some data register is finally written to. If it doesn't do it for
> whatever reason, this is a quirky hardware in my book and needs handling
> in the driver only. So, what is special with this HW? Can't we solve it
> differently?
> 
> All the best,
> 
>    Wolfram
> 




> _______________________________________________
> Openipmi-developer mailing list
> Openipmi-developer@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/openipmi-developer



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
