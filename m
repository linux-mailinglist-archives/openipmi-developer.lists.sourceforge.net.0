Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1377FD2B05
	for <lists+openipmi-developer@lfdr.de>; Thu, 10 Oct 2019 15:18:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iIYKh-0003Ra-2Z; Thu, 10 Oct 2019 13:18:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1iIYKe-0003RS-Ki
 for openipmi-developer@lists.sourceforge.net; Thu, 10 Oct 2019 13:18:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NR8B0Csi5+jNEhbgGIvMIEi2PkGgSV4rdEJF/AwS0bM=; b=Rf/CH8UJrVQ5LiWn7uAf+zMsXi
 MuMCIdCsQsZ3oFTrdFkoiRQQ3uduJJyu+gxwwSurqL5jVaPL9UfdFByYJZFExjqT5gQjYc/13fj2w
 hR+DfoBtOZGDtZ7hstfCFVicqUePJbbAyIg2/KVHDGTY+nIXYZXuJXMn8O+jKaUE/Vsw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NR8B0Csi5+jNEhbgGIvMIEi2PkGgSV4rdEJF/AwS0bM=; b=R7ZSx29v/6MFrFGp0ETEk9BFJk
 uDW4u8xtZ+yH1GIlosmfR56u6aqOLQKsakqUwRDgglXe/f8jFh3i8VBMcLxCpfS52w4nGLnafzEFy
 B/2I6Q/9oiEAxTgPRTnnzfg0Z3nh/CAJVRScEiPIOu9lt/5j7S7WHtENcmQGn798LlFs=;
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iIYKY-0055Bj-4E
 for openipmi-developer@lists.sourceforge.net; Thu, 10 Oct 2019 13:18:16 +0000
Received: by mail-ot1-f48.google.com with SMTP id 21so4804086otj.11
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 10 Oct 2019 06:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NR8B0Csi5+jNEhbgGIvMIEi2PkGgSV4rdEJF/AwS0bM=;
 b=KGrHHBqDc9sDLFqJcudRNLnaBRK4KTi9mKngzCQKQrsc1hZ14CuQ2+qdPKGgEhQUkt
 KfS/vDtDW8eYFiIEcMNA44infL5jrwvdx42CRN1NN6iXnV6r54vtpJAY/vbE766vHHKh
 9WFMYU1yQl15HZiSXDGxqZhVJ4sUG2V2KW0N9D0DKwZcmZBKypvyi0/iWxUI8G7wprCx
 aMSQv2W73S+75D5zWIxUoeMHHYEy3dCKBFDc6tnjje8D/Rj83Di0hbq03CWKbGBC/ZCh
 8aWGdJ1HmfbDanw4xEkvYphACIqwboIeXeYNQNoo1XJU361sBP+zNmrUiqV/5U8VUG5h
 i1mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=NR8B0Csi5+jNEhbgGIvMIEi2PkGgSV4rdEJF/AwS0bM=;
 b=fPi9Zpsizt2Y5/AlD02qHP9+tb5gUAt9XRbj1oVHIXG2qlkIVzqsRA79Hf34V01yXF
 SNzSic+lPgTiqwVtcKFVZWk9ElnN4pn2LQcYX/CnDdAtElKsMwj1tJMWtLHE42XmS3Sp
 xSFb7Jw6XAEgpt1PeAEeiPqx3jXZ+ENXlGRVRgD+b14V0AvV+ie+Y5cJ52YBdDfqCpr0
 6MKLu4t0tEudmpqDeBtCfi8ekpK87OskghPwMpftVsizqYmfNv6NbSdyRhuXvb10R4hE
 mdxPi9Bzilb/S2j/g9hsZLNMxmlmg3CkGLNAX8ZSXTViz0CTrKzq2fgYfe7R5zhdUdkc
 KIjg==
X-Gm-Message-State: APjAAAU0sI693JP/PbOM0N95jKMpymYLDxeuX3ZuHIsmXteolP/9ghgB
 zRjMpQ+0vsYjh+rXqk4hgAZMutw=
X-Google-Smtp-Source: APXvYqyoTzP7gC43n4S2sbV7eGQ/n0nPFaZ1kOj/R1oikquAm64xlaZrglDqCw2NxhQchGoHHSMJ5g==
X-Received: by 2002:a9d:5f0f:: with SMTP id f15mr7167588oti.251.1570713483819; 
 Thu, 10 Oct 2019 06:18:03 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id d9sm1536120ote.11.2019.10.10.06.18.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 06:18:02 -0700 (PDT)
Received: from t560 (unknown [38.123.81.126])
 by serve.minyard.net (Postfix) with ESMTPSA id 1F795180056;
 Thu, 10 Oct 2019 13:18:02 +0000 (UTC)
Date: Thu, 10 Oct 2019 08:17:58 -0500
From: Corey Minyard <minyard@acm.org>
To: tony camuso <tcamuso@redhat.com>
Message-ID: <20191010131758.GB14172@t560>
References: <cbf409f1-9055-5786-eae8-8fff422038be@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cbf409f1-9055-5786-eae8-8fff422038be@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.48 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.48 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mvista.com]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1iIYKY-0055Bj-4E
Subject: Re: [Openipmi-developer] ipmi kmods can be unloaded even when
 userspace is accessing /dev/ipmi0
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
Cc: cminyard@mvista.com, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Oct 09, 2019 at 01:27:28PM -0400, tony camuso wrote:
> 
> One of our vendors reports that the following commit ...
> 
> commit e86ee2d44b44056243da17c120ad258717cedf9b
> Author: Corey Minyard <cminyard@mvista.com>
> Date:   Thu Apr 5 22:05:04 2018 -0500
> 
>     ipmi: Rework locking and shutdown for hot remove
>     To handle hot remove of interfaces, a lot of rework had to be
>     done to the locking.  Several things were switched over to srcu
>     and shutdown for users and interfaces was added for cleaner
>     shutdown.
>     Signed-off-by: Corey Minyard <cminyard@mvista.com>
> 
> ... appears to have made it possible to unload ipmi kmods when userspace
> is accessing /dev/ipmi0
> 
> Is this an intended behavior?

Hmm.  It kind of was, you should be able to unload ipmi_si or ipmi_ssif,
but not ipmi_msghandler or ipmi_devintf.  If a program is using the
device, it will just get errors.

This was all added because of devices that could be dynamically removed
without warning.  The behavior you are referencing is sort of a side
effect of that; it would have taken some extra code to keep the module
from unload, and my assumption was that anyone unloading a module
indended this.

If this is causing a problem, it can be modified.

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
