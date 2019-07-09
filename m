Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BFE63DC1
	for <lists+openipmi-developer@lfdr.de>; Wed, 10 Jul 2019 00:11:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hkyL7-0008As-Se; Tue, 09 Jul 2019 22:11:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <htejun@gmail.com>) id 1hkyL6-0008Af-L8
 for openipmi-developer@lists.sourceforge.net; Tue, 09 Jul 2019 22:11:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hrdm/9H2N9NgzYgLhRIWmHIl9eGkKEmVCjuvL3vRSXE=; b=io9dP/C1OhR+HTjXmMfBg1/0tH
 CrgOrXoV15+LtR5ejN3Lvupe6OyGG+m+Ok4xa9UBTuaRQxNZTPj2pQ/iy4h4BYnz9QFOjvQqnrevv
 CYzILwHuvI7PeS0jJnADttLAanTJ2r2xilQ6wDX+os+D3g3Arru9ngW/8PY7FvhDTwbU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hrdm/9H2N9NgzYgLhRIWmHIl9eGkKEmVCjuvL3vRSXE=; b=j4vJHpjC6+MWsMZ+SUHKTuOg1B
 peESq7ax6KNF0felD8rDEEH8COw+h6EJiRLDjOkp2MsXY5zWgorgP4dRD7TRtPYmC6cKZSY+sVlbv
 N047x/DWOlR7pHV1v4xwYlzRq0q8P0Bhx5aKos3FLPDlI8dU4WyYjIHHFBvxMN3XYFGw=;
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hkyL5-00CzSO-AA
 for openipmi-developer@lists.sourceforge.net; Tue, 09 Jul 2019 22:11:56 +0000
Received: by mail-qt1-f195.google.com with SMTP id h24so326279qto.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 09 Jul 2019 15:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hrdm/9H2N9NgzYgLhRIWmHIl9eGkKEmVCjuvL3vRSXE=;
 b=k97Qg2S85sMGpcqqru1ysXJl+qv2+XunuM/nlkAlv+IwCjpEXTqdCEpndxn3vBED6n
 iomUnC48MMAOffbGcHHW9R8xUZY9Mooj7yN81DrddmkbJfRWZkEis7Z367s+f5W1fzLl
 wsgoMbNVnO8ZTfjZeMQ952/lAE4PLlbZyoVuLqa42DT+fi3ydjP6ll/rxR0SkkMDJt7x
 p+Suv+l6YWHMeTnZ8epOSKriuJ25o4YwTR6qZXpI1In6g358zleB+RVvvluV6fdxtAMO
 Q4jQ1DMuBqp4RCiBmx4uxHSd+tQHvc5cOBCCumqi8Ncbv4v75BAjsBdatlQ8HYgPjiDW
 N/Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=hrdm/9H2N9NgzYgLhRIWmHIl9eGkKEmVCjuvL3vRSXE=;
 b=MF9u+l1OPClzS7erUMKeLM+ELkSRBoiRVj9mx3YVYaelw3oNLzejfYvODzobqDWlMS
 Jf+FVzO1PYRjIvcv8TPA/gjtVUBQQuBq2yVlspvakwzQLQRJWqtkOESmfVz/xyckKigV
 wQ9XNUE5/u5XmTQQTECPYqy0WP2wULTTTpVq3GPeRpNUVdBrJAUr3TQxht2JAa9rC5Oj
 jrCUvJ4QP5RUHgwOCEEG52N3+7yjciziZzieKhoMXPPFZYJWnGARxfZSK7BN8/Bt/Avd
 dAYdK+bUw5xN6eJ4OSnBB7hSfRHNMo2xUqZBoS9YEf2Ie1Hlm5/ExUywgdKbE5qQA0BV
 GGng==
X-Gm-Message-State: APjAAAXQOkn4IALObeSErpDOvSiB4iHuJoRsHO3sfQuKn7SRGcfuUlJ5
 OggbzwDnNTn962PmjxXgBtQ=
X-Google-Smtp-Source: APXvYqx7FCjpDnPyrZoIsonoGb8u75NTaRsidhm0/XijaZ7yZU3MOCx0NM++7Lg3x/nxK4rYLEdBSQ==
X-Received: by 2002:a0c:8a23:: with SMTP id 32mr22012221qvt.231.1562710309253; 
 Tue, 09 Jul 2019 15:11:49 -0700 (PDT)
Received: from localhost ([2620:10d:c091:500::2:fa50])
 by smtp.gmail.com with ESMTPSA id k2sm29808qtq.87.2019.07.09.15.11.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jul 2019 15:11:48 -0700 (PDT)
Date: Tue, 9 Jul 2019 15:11:47 -0700
From: Tejun Heo <tj@kernel.org>
To: Corey Minyard <minyard@acm.org>
Message-ID: <20190709221147.GM657710@devbig004.ftw2.facebook.com>
References: <20190709210643.GJ657710@devbig004.ftw2.facebook.com>
 <20190709214602.GD19430@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709214602.GD19430@minyard.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 1.8 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.160.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (htejun[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hkyL5-00CzSO-AA
Subject: Re: [Openipmi-developer] [PATCH] ipmi_si_intf: use usleep_range()
 instead of busy looping
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
Cc: openipmi-developer@lists.sourceforge.net, kernel-team@fb.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Jul 09, 2019 at 04:46:02PM -0500, Corey Minyard wrote:
> On Tue, Jul 09, 2019 at 02:06:43PM -0700, Tejun Heo wrote:
> > ipmi_thread() uses back-to-back schedule() to poll for command
> > completion which, on some machines, can push up CPU consumption and
> > heavily tax the scheduler locks leading to noticeable overall
> > performance degradation.
> > 
> > This patch replaces schedule() with usleep_range(100, 200).  This
> > allows the sensor readings to finish resonably fast and the cpu
> > consumption of the kthread is kept under several percents of a core.
> 
> The IPMI thread was not really designed for sensor reading, it was
> designed so that firmware updates would happen in a reasonable time
> on systems without an interrupt on the IPMI interface.  This change
> will degrade performance for that function.  IIRC correctly the
> people who did the patch tried this and it slowed things down too
> much.

Also, can you point me to the exact patch?  I'm kinda curious what
kind of timning they used.

Thanks.

-- 
tejun


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
