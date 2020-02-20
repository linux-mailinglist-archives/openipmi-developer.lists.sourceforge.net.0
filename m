Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2C4165DDF
	for <lists+openipmi-developer@lfdr.de>; Thu, 20 Feb 2020 13:51:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1j4lIe-0002E2-Ab; Thu, 20 Feb 2020 12:51:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1j4lIc-0002Dv-Ho
 for openipmi-developer@lists.sourceforge.net; Thu, 20 Feb 2020 12:51:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YDfXa3R811+Xu0vLlpm10iJNfnL3l4gaytJwDqyvuJA=; b=NiYFwC5IcsztZpB6hehQxYI1VO
 eYiGt7/DH0iGSd/70Ady4ZzyljxxjkUSExG56iV6LC3PX2/3xHXsohrkJ0tU2VBjzk4kT7HlbTlRK
 2EQ1/gdi1TcZoYH+h8oFIvhYmhMMUph2MH/9wsoTfzyOPw4lOoD7afIJdzJAjTDMPvZg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YDfXa3R811+Xu0vLlpm10iJNfnL3l4gaytJwDqyvuJA=; b=WM8A+csxt2qVvBqvuy1vh3uDK1
 IrPq902Zf4LQ2oXdBV70y7QMa5EndCp15gqaQhdaOorwu1hE6E8NCcXT7lpNQgMsiFQPq/bbUDo4V
 rTcsljrgUi1eMe9Dr8t//OTyzz4EFKOfufjQw1hcY8eg0sBcYJXee+C7Tv981LPOKyPQ=;
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1j4lIY-008vH9-Fn
 for openipmi-developer@lists.sourceforge.net; Thu, 20 Feb 2020 12:51:26 +0000
Received: by mail-ot1-f66.google.com with SMTP id r16so3539665otd.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 20 Feb 2020 04:51:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YDfXa3R811+Xu0vLlpm10iJNfnL3l4gaytJwDqyvuJA=;
 b=alMfAk9JkfVu230vEhDxLoXXavt0y5Xxq4QWlcBdnRtYu9HlW0hT2kxsrNWiTt93oc
 LaRQv4eHB0mWpiAykhDLU7Mo/g34MCp6hGWdvqHytdQsrcWnL6LjOnwvLL9+LvlfcC8j
 igXi7nlVBPofRaZ1piaTYKbXXmfDchD2yg4UBzfb44Oes/9zMgGELUsUrHzm1KmdtWlh
 wIM2KUfCMGGuqqKrhPCugGdlj/p++cL1fl72elcfngCW1IyF7E/BrNnJW1/E4CAZJ8pG
 79l3T/DSFrYYcWvS+YROvNBNQGemjgaLbllO3Ocwqflb71V9XoiY9Fsil909CPjvECEx
 yXcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=YDfXa3R811+Xu0vLlpm10iJNfnL3l4gaytJwDqyvuJA=;
 b=mJgZMmFoWnC3sIjJmjCUh5GlBX8ZoUq0ihCAFrC6krJ1WleikE431a2WGOTcL2sXDD
 66W+TsmCOpv45WQUbLkTVKa2TAMatrBD6FFn7twXB+m0H//VDzjswp4UZq663793KuEe
 5wjFtaGQbnusbq0KWXuUdXDY49Ry+1HYUOvrvOocXB2NOBj3BhvCvWuj6aez0i/IZCxn
 ysqEEnKle417R4zm86TxYEwGGtL7lHPj6zzdXoRJmFubkzlBidUb31CYpoT5jjysRwlA
 K2M3D3jH6b0fJUFISbD49PthIvGXsoDMoU60UqOvnR3GK6kyie5NeFc7+TZ8C1DU9/Fi
 40rA==
X-Gm-Message-State: APjAAAULpOX9PXn121KMTLqQWUGBMh2hNC33iimCn+w6YHdikn9JTT0n
 sbu/GF5AzLXESYiJIhximQ==
X-Google-Smtp-Source: APXvYqziE5rgUGve3idWzd3wZvJs3aNYXk7WO/XhQb3WgUG8IvLwKAntWQoBPFVHRhsLaVEkzv6sJA==
X-Received: by 2002:a05:6830:607:: with SMTP id
 w7mr24635563oti.155.1582203076610; 
 Thu, 20 Feb 2020 04:51:16 -0800 (PST)
Received: from serve.minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id r13sm1083256oic.52.2020.02.20.04.51.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 04:51:16 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:9129:b2b8:445c:a4ff])
 by serve.minyard.net (Postfix) with ESMTPSA id 7772F180002;
 Thu, 20 Feb 2020 12:51:15 +0000 (UTC)
Date: Thu, 20 Feb 2020 06:51:07 -0600
From: Corey Minyard <minyard@acm.org>
To: Stuart Hayes <stuart.w.hayes@gmail.com>
Message-ID: <20200220125107.GG3704@minyard.net>
References: <9727a3d5-823c-d041-a797-590b9c77ce9c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9727a3d5-823c-d041-a797-590b9c77ce9c@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1j4lIY-008vH9-Fn
Subject: Re: [Openipmi-developer] auto-loading acpi_ipmi
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Feb 19, 2020 at 04:09:55PM -0600, Stuart Hayes wrote:
> Hello!
> 
> I have a question.
> 
> Right now, it appears that the acpi_ipmi module in the linux kernel (allowing access to the IPMI operation region in ACPI) does not get loaded automatically, which can result in undesired results or kernel log messages that don't make it obvious to most users what the issue even is.
> 
> Would adding "MODULE_SOFTDEP("post: acpi_ipmi");" to ipmi_msghandler.c be an acceptable solution?

I'm not sure, that doesn't seem optimal for most systems.  What aboud
adding a request_module() call to acpi_ipmi_probe() in
drivers/char/ipmi/ipmi_si_platform.c?  That way you only request the
module if there is an ACPI IPMI device.

> 
> Right now ipmi_msghandler already has softdep for ipmi_devintf, and adding it for acpi_ipmi seems to fix the issues I'm seeing on a system that needs it (the system needs it for both the power_meter device, as well as for an ACPI _DSM method that controls PCIe SSD LEDs (this is a very new PCI ECN)).
> 
> I'd be happy to submit a kernel patch to do this if there's no objection (or better solution that I've missed).

That would be great if you could try what I suggested.

Thanks,

-corey

> 
> Thanks!
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
