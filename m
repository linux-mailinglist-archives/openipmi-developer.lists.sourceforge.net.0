Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C8EC2352F2A
	for <lists+openipmi-developer@lfdr.de>; Fri,  2 Apr 2021 20:25:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lSOUV-0002ey-Jh; Fri, 02 Apr 2021 18:25:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1lSOUT-0002eT-Pl
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 18:25:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j/8kqi2RzLaV+tl67ICL3y3OLhR7VMGrEFOXn5sbrIw=; b=EHmrlK5n2uNym7lnnnCovwcJIT
 OYp+Fy5MfKgG1fELHOKaZevEcoDMN5WV2xfYdCLnZACgfYtax64XxhbqnZjYB5yeZ+UMppGYBe9f3
 i3dhk7YQARnEuCE7NRelkfJU52Fog4csk72iPTbyjWMGDEs17nMUgBr2vieUIGR0dvnc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=j/8kqi2RzLaV+tl67ICL3y3OLhR7VMGrEFOXn5sbrIw=; b=DSPeVWi9Uq4oXxXUXJ3Evz2+Fz
 ALBtp26zb8PRt25fWsr5rzn29N7AC6heALuCIhFC4YyJXwQ6jAZGPZauUdgIDiktK0n8lKOK4z/jQ
 fVXFvMR7NQCSV2up52WwivcquSoRxPoHkPijpD3YKoKJz8lmGHQV9YACD29xQ6lq/D9Q=;
Received: from mail-oi1-f172.google.com ([209.85.167.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lSOU5-0006vJ-RO
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 18:25:53 +0000
Received: by mail-oi1-f172.google.com with SMTP id w70so5731732oie.0
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 02 Apr 2021 11:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=j/8kqi2RzLaV+tl67ICL3y3OLhR7VMGrEFOXn5sbrIw=;
 b=U9aR8sIhlMWss915BMjr4dOCFnbwtKYGK8K+pSdO/IR7Z523O1bz9qUHdcVwRhFeyd
 bocjBCjNVOQsDoFVlscAA9IjBIohVynFC/kkOL7SpTCt9yZEBspKqm5LnXbNdMm2lhmd
 eyQFdvMOicX/rsQYw5p/eN0udh7AQNezdjmfSdw8JyanCT94wuurTkCe3kfsFzSl0F53
 l+ITjQYsrl6YoQoTmbMkS+25u/Fn4ij9CxJkO8fXy84CRv9aDSKuy3sRUXS84qEVbDhr
 vewsdhafCMcrrn0mD+o9sv0Io3Ro7TVy5SbUrguo4WKPb9scDSw3uH5ZrzbIopFAKaBL
 xClg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=j/8kqi2RzLaV+tl67ICL3y3OLhR7VMGrEFOXn5sbrIw=;
 b=t5e2UFEHN2xis8rxj1GNH1n7c08mKb2Ms1EQMbpIhdQOmovFU9/j3uja/BN/5hryls
 74d2pOLoNfdbgOTi2yfelftfY13ZJ/kdu2XugymGogZ6fdNQhwkJ9NMxXLXSwIs3YdQT
 q1vuInpPhgC2+Qx2wKZxsBkAb5ZZZwnMtgKi40Eyuv2OCD2xw3/jfz5sJEFH74Yjeeao
 MqpY/C/wu0OuWis4CCddzRUjJXW3gSeKYjzfZicTVQHiPkakXt4vlNrlwFYN+uAH9/6F
 yzyTrVW9k0eYsogIcdkUagj6lQmLJRXa0kYcoNzWO/1y9Y64T+E/URpIBJ0Ux1R7i6rj
 8SRg==
X-Gm-Message-State: AOAM532YFvODBCwr/UfUdx71pRTSjTha0av64l3qjrn1LmqX+0EVuHP3
 jyed/2gMuM6RDWwCMkw/5w==
X-Google-Smtp-Source: ABdhPJyg8NjnwNN5qdOUaRIaeljwQA6KWBzkKsF3jz1qQ+ernlsCE+e5GXERUHs141Cd2IAzPWfJFw==
X-Received: by 2002:a05:6808:94:: with SMTP id
 s20mr10488250oic.25.1617387923286; 
 Fri, 02 Apr 2021 11:25:23 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id m14sm2032594otn.69.2021.04.02.11.25.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Apr 2021 11:25:22 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:f99f:823a:495e:5af])
 by serve.minyard.net (Postfix) with ESMTPSA id E2F02180053;
 Fri,  2 Apr 2021 18:25:21 +0000 (UTC)
Date: Fri, 2 Apr 2021 13:25:20 -0500
From: Corey Minyard <minyard@acm.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <20210402182520.GZ507977@minyard.net>
References: <20210402174334.13466-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210402174334.13466-1-andriy.shevchenko@linux.intel.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lSOU5-0006vJ-RO
Subject: Re: [Openipmi-developer] [PATCH v2 00/10] ipmi_si: Set of clean ups
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
Cc: Corey Minyard <cminyard@mvista.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Apr 02, 2021 at 08:43:24PM +0300, Andy Shevchenko wrote:
> The series contains set of clean ups, main parts of which are:
>  - use ne platform_get_mem_or_io() API
>  - use match_string() API

As I have already said, a very nice set of cleanups.  Thank you.
These are applied and in the ipmi linux-next tree.

-corey

> 
> Since v2:
> - patch 3: rephrased commit message (Corey)
> - patch 5: added a comment that array maps to enum (Corey)
> - patch 5: added "ipmi" prefix to the name of the array
> - patch 6: just exported array w/o moving to header (Corey)
> - wrapped up cover letter
> 
> Andy Shevchenko (10):
>   ipmi_si: Switch to use platform_get_mem_or_io()
>   ipmi_si: Remove bogus err_free label
>   ipmi_si: Utilize temporary variable to hold device pointer
>   ipmi_si: Use proper ACPI macros to check error code for failures
>   ipmi_si: Introduce ipmi_panic_event_str[] array
>   ipmi_si: Reuse si_to_str[] array in ipmi_hardcode_init_one()
>   ipmi_si: Get rid of ->addr_source_cleanup()
>   ipmi_si: Use strstrip() to remove surrounding spaces
>   ipmi_si: Drop redundant check before calling put_device()
>   ipmi_si: Join string literals back
> 
>  drivers/char/ipmi/ipmi_msghandler.c  | 54 ++++++----------
>  drivers/char/ipmi/ipmi_si.h          |  8 ++-
>  drivers/char/ipmi/ipmi_si_hardcode.c | 73 ++++++++-------------
>  drivers/char/ipmi/ipmi_si_hotmod.c   | 24 ++-----
>  drivers/char/ipmi/ipmi_si_intf.c     | 32 ++++------
>  drivers/char/ipmi/ipmi_si_pci.c      | 22 ++-----
>  drivers/char/ipmi/ipmi_si_platform.c | 95 ++++++++++++----------------
>  7 files changed, 112 insertions(+), 196 deletions(-)
> 
> -- 
> 2.30.2
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
