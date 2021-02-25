Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F883249AB
	for <lists+openipmi-developer@lfdr.de>; Thu, 25 Feb 2021 05:12:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lF80v-0003Sb-SN; Thu, 25 Feb 2021 04:12:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jae.hyun.yoo@linux.intel.com>) id 1lF80o-0003Rn-9f
 for openipmi-developer@lists.sourceforge.net; Thu, 25 Feb 2021 04:12:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6khm1AW584Aq6BxGtqEdiX7ylRu3kt63ZeBwFAk+Ofs=; b=bJIOwxLHVHjvpeCe9Awmlx6q74
 4DfznMXrJ+WB58edRD/U4HmXxmk6oIF8lKOBCVgXRbjNIiFqbEDUt0xV9w2V8x3puSjEONh+GZAZe
 Hmntrqp04HjbrP6kcfNygYTMjclaEKXqnfQ57IN6viAvz7Obtbok65OiXark/0yKQz90=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6khm1AW584Aq6BxGtqEdiX7ylRu3kt63ZeBwFAk+Ofs=; b=YtFSaf7+qpBH3Av2BNTqZmfELZ
 ToJh344rIYO1ZVOPoUN4NFEfbFtDheXGqu17sILGtW75v3ApeF2srcRvv7kiY6IAEsHs5UIQlG2b+
 pnVuIP8JD0Jwjj+xDjWRZOQl9yUW/EawZbAA5XCfrb2SAGSjRc0TCkZJ2TbZwhzIP0vw=;
Received: from mga06.intel.com ([134.134.136.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lF80h-0007Bk-El
 for openipmi-developer@lists.sourceforge.net; Thu, 25 Feb 2021 04:12:26 +0000
IronPort-SDR: A9/764h5RmwwxE1dOTFaGTSOq7wgmFxyirba0IUP+8i0Lk8QxtiEg7Dcw4VYAUakgtKyF0Boen
 rgE+u05Kzj8A==
X-IronPort-AV: E=McAfee;i="6000,8403,9905"; a="246811472"
X-IronPort-AV: E=Sophos;i="5.81,203,1610438400"; d="scan'208";a="246811472"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2021 20:12:13 -0800
IronPort-SDR: 6h0zU9vDw9mvM2s7VfthW+UnhocqzKqBwJUPSmDAZD0HbeypadpZfdXi5aUe1TjFF1Qt5LI5Mp
 PxyTkqUU/ccw==
X-IronPort-AV: E=Sophos;i="5.81,203,1610438400"; d="scan'208";a="442391011"
Received: from yoojae-mobl.amr.corp.intel.com (HELO [10.212.243.215])
 ([10.212.243.215])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2021 20:12:13 -0800
To: minyard@acm.org
References: <20210222164158.899-1-jae.hyun.yoo@linux.intel.com>
 <20210225023431.GB5988@minyard.net>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <285235b1-8705-2343-98c9-0c6dd82f511b@linux.intel.com>
Date: Wed, 24 Feb 2021 20:12:12 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210225023431.GB5988@minyard.net>
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lF80h-0007Bk-El
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Add additional conditions
 for retrying get device id
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
Cc: Xianting Tian <tian.xianting@h3c.com>,
 openipmi-developer@lists.sourceforge.net,
 Terry Duncan <terry.s.duncan@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Corey,

On 2/24/2021 6:34 PM, Corey Minyard wrote:
> On Mon, Feb 22, 2021 at 08:41:58AM -0800, Jae Hyun Yoo wrote:
>> From: Terry Duncan <terry.s.duncan@intel.com>
>>
>> Rarely but still failures are observed while getting BMC device ID
>> so this commit adds more conditions to retry to get device id.
> 
> I suppose this is ok.  Any more and I'd say just retry on any error.
> 

Yes, that makes sense. I'll change the condition to make it retry
when cc isn't IPMI_CC_NO_ERROR. Will submit v2 soon.

Thanks,
Jae

> -corey
> 
>>
>> Signed-off-by: Terry Duncan <terry.s.duncan@intel.com>
>> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>> ---
>>   drivers/char/ipmi/ipmi_msghandler.c | 5 ++++-
>>   drivers/char/ipmi/ipmi_si_intf.c    | 5 ++++-
>>   include/uapi/linux/ipmi_msgdefs.h   | 1 +
>>   3 files changed, 9 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
>> index c44ad18464f1..decd33535ff7 100644
>> --- a/drivers/char/ipmi/ipmi_msghandler.c
>> +++ b/drivers/char/ipmi/ipmi_msghandler.c
>> @@ -2449,7 +2449,10 @@ static int __get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc)
>>   	if (!bmc->dyn_id_set) {
>>   		if ((bmc->cc == IPMI_DEVICE_IN_FW_UPDATE_ERR
>>   		     || bmc->cc ==  IPMI_DEVICE_IN_INIT_ERR
>> -		     || bmc->cc ==  IPMI_NOT_IN_MY_STATE_ERR)
>> +		     || bmc->cc ==  IPMI_NOT_IN_MY_STATE_ERR
>> +		     || bmc->cc ==  IPMI_TIMEOUT_ERR
>> +		     || bmc->cc ==  IPMI_RESPONSE_UNAVAILABLE
>> +		     || bmc->cc ==  IPMI_NODE_BUSY_ERR)
>>   		     && ++retry_count <= GET_DEVICE_ID_MAX_RETRY) {
>>   			msleep(500);
>>   			dev_warn(intf->si_dev,
>> diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
>> index 5eac94cf4ff8..c315f3fb0fc2 100644
>> --- a/drivers/char/ipmi/ipmi_si_intf.c
>> +++ b/drivers/char/ipmi/ipmi_si_intf.c
>> @@ -1348,7 +1348,10 @@ static int try_get_dev_id(struct smi_info *smi_info)
>>   
>>   		if ((cc == IPMI_DEVICE_IN_FW_UPDATE_ERR
>>   		    || cc == IPMI_DEVICE_IN_INIT_ERR
>> -		    || cc == IPMI_NOT_IN_MY_STATE_ERR)
>> +		    || cc == IPMI_NOT_IN_MY_STATE_ERR
>> +		    || cc == IPMI_TIMEOUT_ERR
>> +		    || cc == IPMI_RESPONSE_UNAVAILABLE
>> +		    || cc == IPMI_NODE_BUSY_ERR)
>>   		    && ++retry_count <= GET_DEVICE_ID_MAX_RETRY) {
>>   			dev_warn(smi_info->io.dev,
>>   			    "BMC returned 0x%2.2x, retry get bmc device id\n",
>> diff --git a/include/uapi/linux/ipmi_msgdefs.h b/include/uapi/linux/ipmi_msgdefs.h
>> index 0934af3b8037..dbadbad71930 100644
>> --- a/include/uapi/linux/ipmi_msgdefs.h
>> +++ b/include/uapi/linux/ipmi_msgdefs.h
>> @@ -69,6 +69,7 @@
>>   #define IPMI_ERR_MSG_TRUNCATED		0xc6
>>   #define IPMI_REQ_LEN_INVALID_ERR	0xc7
>>   #define IPMI_REQ_LEN_EXCEEDED_ERR	0xc8
>> +#define IPMI_RESPONSE_UNAVAILABLE	0xce
>>   #define IPMI_DEVICE_IN_FW_UPDATE_ERR	0xd1
>>   #define IPMI_DEVICE_IN_INIT_ERR		0xd2
>>   #define IPMI_NOT_IN_MY_STATE_ERR	0xd5	/* IPMI 2.0 */
>> -- 
>> 2.17.1
>>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
