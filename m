Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BDB3B287AF
	for <lists+openipmi-developer@lfdr.de>; Fri, 15 Aug 2025 23:23:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7d8y+w3OAEyRxrdDFmbpeWokQAGSeV2AKVB3OZMD9tk=; b=jERpksQ10X3oRnlmdmkiQJrhm5
	kVki4NEvEWz7zt8hhMPSFnfanmyJ0g7p03WXAeITk1G70zb1SadnjPzb+c2EstXRpmB02MHiL09AW
	t79N53oSiQF/rgOlQ9I4BE4SsyaBr/90zAOZa7byzbDmLnoLsoPk3H+wPPoqNpeU3SF4=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1un1tP-0005wm-5V;
	Fri, 15 Aug 2025 21:23:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <fred@cloudflare.com>) id 1un1tN-0005wf-K2
 for openipmi-developer@lists.sourceforge.net;
 Fri, 15 Aug 2025 21:23:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gkCGU7vrJ7DFla5aXCTXd0vDs1VIB8T5w3DaNMZ0OU8=; b=HBuC/fP0XDGszVREL7nKua1cDG
 UaONkUOmjZeKIM2VOH4hYy8V7COVMg6mE5hBQxGMCw4wGEwSqJxLdMIG4sF5L5VXT1WXshrqKiCJJ
 zPWodL0w65PgH25GeBTvzFSj/ldhK6EzAKG7lKHYwSZ/YnjMxQNvwH7iJZYzGFyOZvhM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gkCGU7vrJ7DFla5aXCTXd0vDs1VIB8T5w3DaNMZ0OU8=; b=GxxtLieSy65ljEXpI3ZRJRrJBk
 ai6qjhRDPcUvyjTJg/BnUfQ+Y/YImKQPyHcJXKGwhbgq5KNRvtnluR1Qfm9cfNwygNtyh5SfZ2cTm
 Htmi0THM/Rx/o5oNoMiXYCwdmgusIJeXh0d5CQ6I5QBukffx+uSms+jQCj1TeWLL+29k=;
Received: from mail-il1-f179.google.com ([209.85.166.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1un1tN-0006L3-7f for openipmi-developer@lists.sourceforge.net;
 Fri, 15 Aug 2025 21:23:17 +0000
Received: by mail-il1-f179.google.com with SMTP id
 e9e14a558f8ab-3e575ff1b80so8897865ab.3
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 15 Aug 2025 14:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1755292991; x=1755897791;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=gkCGU7vrJ7DFla5aXCTXd0vDs1VIB8T5w3DaNMZ0OU8=;
 b=dcjTzbOZnqasp6kxOkt1KeBEgxNhMTwJ/GhMwCKfq9K/VifGnHsctDElZLxtTnnYmy
 poCJ0JUD0jinYDs2ZcT6Mh83vHfP43FB/ji2XeeNt6Yml0KvvilSIb2suXCXVA586EhG
 afh6FHRHsLVKi5ZNX8LIB5BYqG+AdxAU7/HaPxc1Vgvr7DwXPSRgySfDf0kQeA/bgjg9
 g/3m2o7fG2CkBC/6JOZf4U/yb4ZZ5D2FqZb6T7ViQ3sZwJSD9BSgdZbp/VGOWSpXyg3q
 CaDoWS0xWKTMa+yvTHGTfg97/eQsz12kGF7qTkkoWPIo0cZyyLXgh3QS8J89uHa6Bd8r
 E1GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755292991; x=1755897791;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gkCGU7vrJ7DFla5aXCTXd0vDs1VIB8T5w3DaNMZ0OU8=;
 b=D2il6ZjmPzVwyRfQ2C4ZM69Plo+3mQn0wW2GOrDpSgpmJkeZhtnZBwQZZ74mW01MC+
 vyz7Ltbdm/I93XiVKXa19sRfmQjU8qH+KCXtFwRH2s2pP7MDG2DI/ET+jCLx27GW9tqt
 jr37uFTnDgvuAKN9wk8JpAh43xCBrdbh4/n84QjvHFhIhlHtaJtKailrEO85/piuJTLq
 XYVsaGkGkhsRa7twk66f27KZjcnVB2ni7sO+mGto+LPwi8H1/VJ+ubJZ0OtxbEXZb9zg
 I48xUqBlmIsx98OGCwspasl1u5hPXphWYYoRKMzbneet4ZPnVWjwg8v0FsFzAZdzyC19
 pJ8Q==
X-Gm-Message-State: AOJu0YxEbsa+gYv+gutbmUJQrUT5bzaMohyTXRrSiAffd7wojGM7DyQQ
 QyGZAA49Q3GSBpDtroT60tvK5rqZgQ/y9P09ToXvyrqmzoPj/nu9l8kag/JA7EzYBwn6lHCeajP
 4qBxzVbI=
X-Gm-Gg: ASbGncs7bbDhj849uxgdmk/mbiR1pvsMyPageROVm793en9kylK7UqsK/Ixj54G1YZU
 G7WptkitG3/2xYNhybpkgjUIklurUF6RxigYWb40SQc3BpGhtIUorWFyT0UPn3ySWqYthZe15GW
 HAQ/1jDcIrHkN7S1RZxfMQ/BR50/pO2+c6KEzx1Knq4SAQ1b+/52uEWrf99xvm17aQOy6mmffps
 0Oe6OFvcuMHHHZJo3u4URtICF2xsRSIInoYArgA6ujTGdfGibE0acq2dvS6L3KwfPIRVRdNZ+h4
 Wku4prCP7fMbqAQfRUAKci23WIQr7tGz9N85mGKhQn+avw1XGLahyjrgE7KZQADe/NNT8ClKsrj
 IH31ECImtLTYl
X-Google-Smtp-Source: AGHT+IGOp9pqa7yNmPp64kIzhyF7IB2PIDfMU+q5BfpPSHoLfXYQtuamRMAjyJZp0218S+l/ER8bWA==
X-Received: by 2002:a05:6e02:3c83:b0:3e5:4842:c522 with SMTP id
 e9e14a558f8ab-3e57e86d2acmr59871085ab.10.1755292991281; 
 Fri, 15 Aug 2025 14:23:11 -0700 (PDT)
Received: from CMGLRV3 ([2a09:bac5:8255:4e6::7d:7f])
 by smtp.gmail.com with ESMTPSA id
 8926c6da1cb9f-50c9477ef32sm653514173.19.2025.08.15.14.23.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Aug 2025 14:23:10 -0700 (PDT)
Date: Fri, 15 Aug 2025 16:23:08 -0500
To: Corey Minyard <corey@minyard.net>
Message-ID: <aJ-lPAc2bLlvHNa3@CMGLRV3>
References: <20250807230648.1112569-1-corey@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250807230648.1112569-1-corey@minyard.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Corey, On Thu, Aug 07, 2025 at 06:02:31PM -0500, Corey
 Minyard wrote: > I went ahead and did some patches for this, since it was
 on my mind. > > With these, if a reset is sent to the BMC, the driver will
 dis [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.179 listed in wl.mailspike.net]
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1un1tN-0006L3-7f
Subject: Re: [Openipmi-developer] [RFC] Patches to disable messages during
 BMC reset
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
From: Frederick Lawler via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Frederick Lawler <fred@cloudflare.com>
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 kernel-team@cloudflare.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Corey,

On Thu, Aug 07, 2025 at 06:02:31PM -0500, Corey Minyard wrote:
> I went ahead and did some patches for this, since it was on my mind.
> 
> With these, if a reset is sent to the BMC, the driver will disable
> messages to the BMC for a time, defaulting to 30 seconds.  Don't
> modify message timing, since no messages are allowed, anyway.
> 
> If a firmware update command is sent to the BMC, then just reject
> sysfs commands that query the BMC.  Modify message timing and
> allow direct messages through the driver interface.
> 
> Hopefully this will work around the problem, and it's a good idea,
> anyway.
> 
> -corey
> 

Thanks for the patches, and sorry for the delay in response.
It's one of _those weeks_. Anyway, I backported the patch series
to 6.12, and the changes seem reasonable to me overall. Ran it
through our infra on a single node, and nothing seemed to break.

I did observe with testing that resetting BMC via ipmitool on the host
did kick out sysfs reads as expected.

Resetting the BMC remotely, was not handled (this seems obvious given the state
changes are handled via ipmi_msg handler). Would the BMC send an event
to the kernel letting it know its resetting so that case could be
handled?

Best,
Fred


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
