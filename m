Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AEE13487D2
	for <lists+openipmi-developer@lfdr.de>; Thu, 25 Mar 2021 05:07:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lPHHb-0006dt-4q; Thu, 25 Mar 2021 04:07:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <tcminyard@gmail.com>) id 1lPHHa-0006dZ-4l
 for openipmi-developer@lists.sourceforge.net; Thu, 25 Mar 2021 04:07:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eBa8dDTZYQIn7L3V8cQxi5OM14KckVUv0x/c7TsdqKM=; b=iRTIG7HY1DjshcpEhQkC8qZwZ6
 OpfAgxb3Pn7rXjPCCdgqQOpl5qwgGHJLlmMQmzC1qU8upmj5j9MeraSbQ+TqPuvX3+/AzPgryK94Q
 hN0EGFrApRcgbepCv73+m2M1CNui0WSYQWiyIGjv9if7B2G62R4HTfyWfdEZ5PvVBuBs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eBa8dDTZYQIn7L3V8cQxi5OM14KckVUv0x/c7TsdqKM=; b=CvqztMLtpzTNiS9nSGWrLJ3VgS
 TXXumnlxt/zi7P8LrwSK9pKkujty0IxP+9DC1Ecsq61hl4SwNBUuFKpVGUV+HWWH+D2YNiAfn8Kyw
 MX84vVmNS98ZBQs5OKqcW/PskeVLhcbK7ZduCa+CzI0y4HcYDqFy1eSJOw7qVxGwtUyw=;
Received: from mail-oi1-f177.google.com ([209.85.167.177])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lPHHP-008FEJ-VM
 for openipmi-developer@lists.sourceforge.net; Thu, 25 Mar 2021 04:07:41 +0000
Received: by mail-oi1-f177.google.com with SMTP id i81so812313oif.6
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 24 Mar 2021 21:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=eBa8dDTZYQIn7L3V8cQxi5OM14KckVUv0x/c7TsdqKM=;
 b=rDtokhIqscqa5+UB2+b9Ec8UAZ1RByzl2KghwSe326pLdV9mQqBM1Ar2IL6cqj/om4
 HyLScjF5jdZ504HDVg+8xriEs/iqcIojuDmVXxu9MYhLpbe2ezYKUhAlw2OtKzaTmmar
 lcwV/bZT1LNMuw0ds0x8svhasaBZUOWaUD+EuIvw7R77JgaNqynxajA9SB6i0UCnXBi4
 pUleRiSdkqj3khe5+OFnKtVj7Kj+zgvtwtqJuXFc7Li7y1Rk0tZvz1cREQqsLk0645Tm
 jSKe/WgnN8CEnxYgCJsLXU6L6QvRViNNl0rYeIhU7LNQ1AmqttyVnKDVNxijMExFbOSw
 u30Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=eBa8dDTZYQIn7L3V8cQxi5OM14KckVUv0x/c7TsdqKM=;
 b=NVufk3rXHFOUhjXYAcjKlISrOxMbrbS0IqCrLqoeg8IMx0bAt+OB74zF5dKHWujk37
 wPj1vbafRWgprEV10zpu5Z7oGtNRzTJXTa4slIunj9b3PHRtWOp3hkICWuJD9hGpzk+b
 6iAgWv3DVm44SDzYLmknATCb0yry18/ylvvFRX1yPFFzSbq/aMtwh6xEqRMhfY3PBWIK
 0/ylPjpL0GwatoxGt/i6pDfVNbJtlQSOdwgqolIqRt1bCVJ/xjZEMdZvrT/TF+UVwHHO
 xGc4n3eTtqeye7/5mIrCX1abqSLX/j06xg+I21lrdv86uM0EJ/m7L/n9kW71m1d3+UfK
 Eugw==
X-Gm-Message-State: AOAM531/kKc8LOITwxif4Dkau43fwoZumT5ZWnKNKiOnouaylYUipmqF
 +uODpYLY4RR+YidHXPDDD9jcl3uso4JN
X-Google-Smtp-Source: ABdhPJyTs9nvogcheP0VcAV1ikqpbxevXaLxn9bb7Sa7fGejLfLGLGrLs+fPy3+3v3BPs8NIzgho9Q==
X-Received: by 2002:aca:75c6:: with SMTP id q189mr4691197oic.29.1616645246327; 
 Wed, 24 Mar 2021 21:07:26 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id c205sm860022oib.40.2021.03.24.21.07.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Mar 2021 21:07:25 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:617a:549:42df:aa15])
 by serve.minyard.net (Postfix) with ESMTPSA id 19A2E18004D;
 Thu, 25 Mar 2021 04:07:24 +0000 (UTC)
Date: Wed, 24 Mar 2021 23:07:22 -0500
From: Corey Minyard <minyard@acm.org>
To: Maneesh Singhal <mnshsnghl@gmail.com>
Message-ID: <20210325040722.GL507977@minyard.net>
References: <CAMp8WcrSvfm8445aGnE5AJ+qPB7OQB+PUL5ugCDfcvD6m=jBBg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMp8WcrSvfm8445aGnE5AJ+qPB7OQB+PUL5ugCDfcvD6m=jBBg@mail.gmail.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.177 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.177 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1lPHHP-008FEJ-VM
Subject: Re: [Openipmi-developer] Getting 16777411 (Timeout) error from IPMI
 code
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

On Wed, Mar 24, 2021 at 08:08:05PM +0530, Maneesh Singhal wrote:
> Hello Team
> 
> We built our code based on ipmicmd.c (The ipmi specifics are all same). The
> commands that we are using are Power On (0x01) and Power Off (0x00) and we
> are facing 16777411 error which I believe is timeout error.
> I tried debugging it through, but no success how and where I am getting
> timeout. Moreover, I rebooted the host multiple times, and still the
> problem persists.

I assume you can issue these commands successfully with ipmicmd?

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
